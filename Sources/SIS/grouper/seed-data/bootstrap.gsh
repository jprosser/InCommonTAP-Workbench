gs = GrouperSession.startRootSession()

addMember("etc:sysadmingroup","tjordan");

# t1j - add GDG root stems
addRootStem("basis","basis");
addRootStem("ref","ref");
addRootStem("bundle","bundle");
addRootStem("app","app");
addRootStem("org","org");
addRootStem("test","test")

# t1j - move these to etc
#addRootStem("psp","psp");
#addRootStem("loader","loader");
addStem("etc","psp","psp");
addStem("etc","loader","loader");


# Create attributes for restricting isMemberOf by entityID
addStem("etc:attribute","ShibEntityId","ShibEntityId");
attrStem = StemFinder.findByName(gs, "etc:attribute:ShibEntityId");
shibAttrDef = attrStem.addChildAttributeDef("ShibEntityIdDefn", AttributeDefType.attr);
shibAttrDef.setValueType(AttributeDefValueType.string);
shibAttrDef.setAssignToGroup(true);
shibAttrDef.setMultiValued(true);
shibAttrDef.store();
shibAttr = attrStem.addChildAttributeDefName(shibAttrDef, "ShibEntityId", "ShibEntityId");


addGroup("etc:loader","allUsers", "All Users");

groupAddType("etc:loader:allUsers", "grouperLoader");
setGroupAttr("etc:loader:allUsers", "grouperLoaderDbName", "grouper");
setGroupAttr("etc:loader:allUsers", "grouperLoaderType", "SQL_SIMPLE");
setGroupAttr("etc:loader:allUsers", "grouperLoaderScheduleType", "CRON");
setGroupAttr("etc:loader:allUsers", "grouperLoaderQuartzCron", "*/10 * * * * ?");
setGroupAttr("etc:loader:allUsers", "grouperLoaderQuery", "select distinct uid as SUBJECT_ID from myapp_development.users");

addStem("basis","courses","courses");

addGroup("etc:loader","coursesLoader", "Course Loader");
groupAddType("etc:loader:coursesLoader", "grouperLoader");
setGroupAttr("etc:loader:coursesLoader", "grouperLoaderDbName", "grouper");
setGroupAttr("etc:loader:coursesLoader", "grouperLoaderType", "SQL_GROUP_LIST");
setGroupAttr("etc:loader:coursesLoader", "grouperLoaderScheduleType", "CRON");
setGroupAttr("etc:loader:coursesLoader", "grouperLoaderQuartzCron", "*/10 * * * * ?");
# t1j - try adding courses under ref
setGroupAttr("etc:loader:coursesLoader", "grouperLoaderQuery", "select distinct uid as SUBJECT_ID, CONCAT('basis:courses:', course_number) as GROUP_NAME from myapp_development.courses_users, myapp_development.courses, myapp_development.users where courses_users.course_id = courses.id and courses_users.user_id = users.id");
# this handles removing members from groups that fall out of population from query above.
setGroupAttr("etc:loader:coursesLoader", "grouperLoaderGroupsLike", "basis:courses:%");
# t1j - move affiliations under ref
#addRootStem("affiliations","affiliations");
addStem("ref","affiliations","affiliations");

folder = StemFinder.findByName(gs, "ref:affiliations");
AttributeAssign attributeAssign = folder.getAttributeDelegate().addAttribute(RuleUtils.ruleAttributeDefName()).getAttributeAssign();
AttributeValueDelegate attributeValueDelegate = attributeAssign.getAttributeValueDelegate();
attributeValueDelegate.assignValue(RuleUtils.ruleActAsSubjectSourceIdName(), "g:isa");
attributeValueDelegate.assignValue(RuleUtils.ruleActAsSubjectIdName(), "GrouperSystem");
attributeValueDelegate.assignValue(RuleUtils.ruleCheckTypeName(), RuleCheckType.groupCreate.name());
attributeValueDelegate.assignValue(RuleUtils.ruleCheckStemScopeName(), Stem.Scope.SUB.name());
attributeValueDelegate.assignValue(RuleUtils.ruleThenElName(),"${ruleElUtils.assignGroupPrivilege(groupId, 'g:gsa', groupId, null, 'read')}");

###LDAP###group = new GroupSave(gs).assignName("etc:loader:affiliationLoader").assignCreateParentStemsIfNotExist(true).save();
###LDAP###group.getAttributeDelegate().assignAttribute(LoaderLdapUtils.grouperLoaderLdapAttributeDefName()).getAttributeAssign();
###LDAP###attributeAssign = group.getAttributeDelegate().retrieveAssignment(null, LoaderLdapUtils.grouperLoaderLdapAttributeDefName(), false, true);
###LDAP###attributeAssign.getAttributeValueDelegate().assignValue(LoaderLdapUtils.grouperLoaderLdapQuartzCronName(), "*/15 * * * * ?");
###LDAP###attributeAssign.getAttributeValueDelegate().assignValue(LoaderLdapUtils.grouperLoaderLdapTypeName(), "LDAP_GROUPS_FROM_ATTRIBUTES");
###LDAP###attributeAssign.getAttributeValueDelegate().assignValue(LoaderLdapUtils.grouperLoaderLdapServerIdName(), "demo");
###LDAP###attributeAssign.getAttributeValueDelegate().assignValue(LoaderLdapUtils.grouperLoaderLdapFilterName(), "(eduPersonAffiliation=*)");
###LDAP###attributeAssign.getAttributeValueDelegate().assignValue(LoaderLdapUtils.grouperLoaderLdapSearchDnName(), "ou=People");
###LDAP###attributeAssign.getAttributeValueDelegate().assignValue(LoaderLdapUtils.grouperLoaderLdapSubjectAttributeName(), "uid");
###LDAP###attributeAssign.getAttributeValueDelegate().assignValue(LoaderLdapUtils.grouperLoaderLdapGroupAttributeName(), "eduPersonAffiliation");
###LDAP###attributeAssign.getAttributeValueDelegate().assignValue(LoaderLdapUtils.grouperLoaderLdapSubjectIdTypeName(), "subjectId");
###LDAP###attributeAssign.getAttributeValueDelegate().assignValue(LoaderLdapUtils.grouperLoaderLdapSubjectExpressionName(), "${subjectAttributes['subjectId']}");
###LDAP###attributeAssign.getAttributeValueDelegate().assignValue(LoaderLdapUtils.grouperLoaderLdapGroupNameExpressionName(), "ref:affiliations:${groupAttribute}_systemOfRecord");
###LDAP###attributeAssign.getAttributeValueDelegate().assignValue(LoaderLdapUtils.grouperLoaderLdapGroupDisplayNameExpressionName(), "${groupAttribute} system of record");
###LDAP###attributeAssign.getAttributeValueDelegate().assignValue(LoaderLdapUtils.grouperLoaderLdapGroupTypesName(), "addIncludeExclude");

# Roll Up Groups
addGroup("ref","cs_students","CS Students");
groupAddType("ref:cs_students", "grouperLoader");
setGroupAttr("ref:cs_students", "grouperLoaderDbName", "grouper");
setGroupAttr("ref:cs_students", "grouperLoaderType", "SQL_SIMPLE");
setGroupAttr("ref:cs_students", "grouperLoaderScheduleType", "CRON");
setGroupAttr("ref:cs_students", "grouperLoaderQuartzCron", "*/10 * * * * ?");
setGroupAttr("ref:cs_students", "grouperLoaderQuery", "SELECT DISTINCT GROUP_ID AS SUBJECT_ID FROM grouper_groups_v WHERE NAME LIKE 'basis:courses:CS%'");

addGroup("ref","acct_students","Accounting Students");
groupAddType("ref:acct_students", "grouperLoader");
setGroupAttr("ref:acct_students", "grouperLoaderDbName", "grouper");
setGroupAttr("ref:acct_students", "grouperLoaderType", "SQL_SIMPLE");
setGroupAttr("ref:acct_students", "grouperLoaderScheduleType", "CRON");
setGroupAttr("ref:acct_students", "grouperLoaderQuartzCron", "*/10 * * * * ?");
setGroupAttr("ref:acct_students", "grouperLoaderQuery", "SELECT DISTINCT GROUP_ID AS SUBJECT_ID FROM grouper_groups_v WHERE NAME LIKE 'basis:courses:ACCT%'");

addGroup("ref","math_students","Math Students");
groupAddType("ref:math_students", "grouperLoader");
setGroupAttr("ref:math_students", "grouperLoaderDbName", "grouper");
setGroupAttr("ref:math_students", "grouperLoaderType", "SQL_SIMPLE");
setGroupAttr("ref:math_students", "grouperLoaderScheduleType", "CRON");
setGroupAttr("ref:math_students", "grouperLoaderQuartzCron", "*/10 * * * * ?");
setGroupAttr("ref:math_students", "grouperLoaderQuery", "SELECT DISTINCT GROUP_ID AS SUBJECT_ID FROM grouper_groups_v WHERE NAME LIKE 'basis:courses:MATH%'");

addGroup("ref","tier_students","TIER Department Students");
groupAddType("ref:tier_students", "grouperLoader");
setGroupAttr("ref:tier_students", "grouperLoaderDbName", "grouper");
setGroupAttr("ref:tier_students", "grouperLoaderType", "SQL_SIMPLE");
setGroupAttr("ref:tier_students", "grouperLoaderScheduleType", "CRON");
setGroupAttr("ref:tier_students", "grouperLoaderQuartzCron", "*/10 * * * * ?");
setGroupAttr("ref:tier_students", "grouperLoaderQuery", "SELECT DISTINCT GROUP_ID AS SUBJECT_ID FROM grouper_groups_v WHERE NAME LIKE 'basis:courses:TIER%'");

# Course References Groups
# The mapping of basis to reference groups is 1 to 1 for courses...e.g. basis:TIER101 is a member of ref:courses:TIER101
# We could scale this to be something more sophisticated such as if your basis groups contained additional information like
# TIER101|STUDENT, TIER101|TA
addStem("ref","courses","courses");
addGroup("etc:loader","referenceCoursesLoader", "Reference Group Course Loader");
groupAddType("etc:loader:referenceCoursesLoader", "grouperLoader");
setGroupAttr("etc:loader:referenceCoursesLoader", "grouperLoaderDbName", "grouper");
setGroupAttr("etc:loader:referenceCoursesLoader", "grouperLoaderType", "SQL_GROUP_LIST");
setGroupAttr("etc:loader:referenceCoursesLoader", "grouperLoaderScheduleType", "CRON");
setGroupAttr("etc:loader:referenceCoursesLoader", "grouperLoaderQuartzCron", "*/10 * * * * ?");
setGroupAttr("etc:loader:referenceCoursesLoader", "grouperLoaderQuery", "select distinct group_id as SUBJECT_ID, CONCAT('ref:courses:', extension) as GROUP_NAME from grouper_groups_v where name like 'basis:courses:%'");
# this handles removing members from groups that fall out of population from query above.
setGroupAttr("etc:loader:referenceCoursesLoader", "grouperLoaderGroupsLike", "ref:courses:%");


# The "All Students" bundle
addGroup("bundle","all_students","All Students");
addMember("bundle:all_students","ref:cs_students");
addMember("bundle:all_students","ref:acct_students");
addMember("bundle:all_students","ref:math_students");
addMember("bundle:all_students","ref:tier_students");

# Canvas Users
# Canvas is only open to CS students
addStem("app","canvas","canvas");
# We are building app:canvas:users -> ((app:canvas:adhoc + ref:CS Students) -> app:canvas:users_allow) - app:canvas:users_deny
addGroup("app:canvas", "users", "Users");
addGroup("app:canvas", "users_allow", "Allowed Users");
addGroup("app:canvas", "adhoc", "AdHoc Users");
addGroup("app:canvas", "users_deny", "Denied Users");
# tjordan (the IT admin) has himself in the ad-hoc group so he can test canvas
addMember("app:canvas:adhoc","tjordan");
# users_allow is made up of all CS students
addMember("app:canvas:users_allow", "ref:cs_students");
addMember("app:canvas:users_allow", "app:canvas:adhoc");
# users_deny is a hand tailored list right now of naughty users. No one banned in the demo
# addMember("app:canvas:users_deny", "naughty user here");
# Build the composite out:
addComposite("app:canvas:users", CompositeType.COMPLEMENT, "app:canvas:users_allow", "app:canvas:users_deny");
# Couple classes that will be provisioned to canvas. Driven by basis groups
# They will also use the users_deny group.
addGroup("app:canvas","class_cs101", "CS101 Class");
addComposite("app:canvas:class_cs101", CompositeType.COMPLEMENT, "basis:courses:CS101", "app:canvas:users_deny");
addGroup("app:canvas","class_cs102", "CS102 Class");
addComposite("app:canvas:class_cs102", CompositeType.COMPLEMENT, "basis:courses:CS102", "app:canvas:users_deny");

# "Portal" users
addStem("app","portal","portal");
# Canvas is open to all students BUT Math students. The Portal team thinks Math students should not use the portal
# We are building: app:portal:users -> ((app:portal:adhoc + bundle:All Students) -> app:portal:users_allow - app:portal:users_deny
addGroup("app:portal", "users", "Users");
addGroup("app:portal", "users_allow", "Allowed Users");
addGroup("app:portal", "adhoc", "AdHoc Users");
addGroup("app:portal", "users_deny", "Denied Users");
# tjordan (the IT admin) has himself in the ad-hoc group so he can test the portal
addMember("app:portal:adhoc","tjordan");
# users_allow is made up of all CS students
addMember("app:portal:users_allow", "bundle:all_students");
addMember("app:portal:users_allow", "app:portal:adhoc");
# users_deny is all the math students
addMember("app:portal:users_deny", "ref:math_students");
# Build the composite out:
addComposite("app:portal:users", CompositeType.COMPLEMENT, "app:portal:users_allow", "app:portal:users_deny");

# "SIS" users
# nothing data driven about this. Only Tom Jordan can do anything
addStem("app","sis","sis");
addGroup("app:sis","users","Users");
addMember("app:sis:users","tjordan");


# Grouper users
# Grouper users is a hand maintained list. Nothing data driven about it.
# An IT Admin, a random student, and the grouper wheel group
addStem("app","grouper","grouper");
addGroup("app:grouper", "users", "users");
addMember("app:grouper:users","tjordan"); 
addMember("app:grouper:users","jbabb");
addMember("app:grouper:users","etc:sysadmingroup");


