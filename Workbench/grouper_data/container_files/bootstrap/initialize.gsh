System.out.println("************** initialize.gsh starting...")

gs = GrouperSession.startRootSession()

addStem("", "app", "app")
addStem("", "basis", "basis")
addStem("", "bundle", "bundle")
addStem("", "org", "org")
addStem("", "test", "test")

addRootStem("ref", "ref")
addStem("ref", "course", "course")
addStem("ref", "affiliation", "affiliation")

group = GroupFinder.findByName(gs, "etc:sysadmingroup", true)
group.getAttributeDelegate().assignAttribute(LoaderLdapUtils.grouperLoaderLdapAttributeDefName()).getAttributeAssign()
attributeAssign = group.getAttributeDelegate().retrieveAssignment(null, LoaderLdapUtils.grouperLoaderLdapAttributeDefName(), false, true)
attributeAssign.getAttributeValueDelegate().assignValue(LoaderLdapUtils.grouperLoaderLdapQuartzCronName(), "0 * * * * ?")
attributeAssign.getAttributeValueDelegate().assignValue(LoaderLdapUtils.grouperLoaderLdapTypeName(), "LDAP_SIMPLE")
attributeAssign.getAttributeValueDelegate().assignValue(LoaderLdapUtils.grouperLoaderLdapFilterName(), "(cn=sysadmingroup)")
attributeAssign.getAttributeValueDelegate().assignValue(LoaderLdapUtils.grouperLoaderLdapSearchDnName(), "ou=midpoint,ou=Groups")
attributeAssign.getAttributeValueDelegate().assignValue(LoaderLdapUtils.grouperLoaderLdapServerIdName(), "demo")
attributeAssign.getAttributeValueDelegate().assignValue(LoaderLdapUtils.grouperLoaderLdapSourceIdName(), "ldap")
attributeAssign.getAttributeValueDelegate().assignValue(LoaderLdapUtils.grouperLoaderLdapSubjectExpressionName(), '${loaderLdapElUtils.convertDnToSpecificValue(subjectId)}')
attributeAssign.getAttributeValueDelegate().assignValue(LoaderLdapUtils.grouperLoaderLdapSubjectAttributeName(), "uniqueMember")
attributeAssign.getAttributeValueDelegate().assignValue(LoaderLdapUtils.grouperLoaderLdapSubjectIdTypeName(), "subjectId")

chess = new GroupSave(gs).assignName("app:mailinglist:chess").assignCreateParentStemsIfNotExist(true).save()
idmfans = new GroupSave(gs).assignName("app:mailinglist:idm-fans").assignCreateParentStemsIfNotExist(true).save()
cs = new GroupSave(gs).assignName("app:cs").assignCreateParentStemsIfNotExist(true).save()
volunteers = new GroupSave(gs).assignName("test:volunteers").assignCreateParentStemsIfNotExist(true).save()


group = new GroupSave(gs).assignName("etc:affiliationLoader").assignCreateParentStemsIfNotExist(true).save()
group.addType(GroupTypeFinder.find("grouperLoader"))
group.setAttribute("grouperLoaderDbName", "sis")
group.setAttribute("grouperLoaderType", "SQL_GROUP_LIST")
group.setAttribute("grouperLoaderScheduleType", "CRON")
group.setAttribute("grouperLoaderQuartzCron", "0 * * * * ?")
group.setAttribute("grouperLoaderDbName", "sis")
group.setAttribute("grouperLoaderGroupTypes", "addIncludeExclude")
group.setAttribute("grouperLoaderQuery", "SELECT concat('ref:affiliation:',affiliation,'_systemOfRecord') as GROUP_NAME, uid as SUBJECT_IDENTIFIER, 'ldap' as SUBJECT_SOURCE_ID from SIS_AFFILIATIONS")

group = new GroupSave(gs).assignName("etc:deptLoader").assignCreateParentStemsIfNotExist(true).save()
group.addType(GroupTypeFinder.find("grouperLoader"))
group.setAttribute("grouperLoaderDbName", "sis")
group.setAttribute("grouperLoaderType", "SQL_GROUP_LIST")
group.setAttribute("grouperLoaderScheduleType", "CRON")
group.setAttribute("grouperLoaderQuartzCron", "0 * * * * ?")
group.setAttribute("grouperLoaderDbName", "sis")
group.setAttribute("grouperLoaderQuery", "SELECT concat('ref:dept:',department) as GROUP_NAME, uid as SUBJECT_IDENTIFIER, 'ldap' as SUBJECT_SOURCE_ID from SIS_PERSONS where department is not null")

group = new GroupSave(gs).assignName("etc:coursesLoader").assignCreateParentStemsIfNotExist(true).save()
group.addType(GroupTypeFinder.find("grouperLoader"))
group.setAttribute("grouperLoaderDbName", "sis")
group.setAttribute("grouperLoaderType", "SQL_GROUP_LIST")
group.setAttribute("grouperLoaderScheduleType", "CRON")
group.setAttribute("grouperLoaderQuartzCron", "0 * * * * ?")
group.setAttribute("grouperLoaderDbName", "sis")
group.setAttribute("grouperLoaderQuery", "SELECT concat('ref:course:',courseId) as GROUP_NAME, uid as SUBJECT_IDENTIFIER, 'ldap' as SUBJECT_SOURCE_ID from SIS_COURSES")

edu.internet2.middleware.grouper.app.loader.GrouperLoaderType.scheduleLoads()



def addGroups(gs,stem,owner,regexp) {
	for (group in stem.childGroups) {
		if (!group.name.endsWith('_includes') &&
		    !group.name.endsWith('_excludes') &&
		    !group.name.endsWith('_systemOfRecord') &&
		    !group.name.endsWith('_systemOfRecordAndIncludes') &&
		    (regexp == null || group.extension ==~ regexp)) {
			println 'Adding: ' + group
			def s = SubjectFinder.findById(group.getId(), 'group', 'g:gsa')
			owner.addMember(s, false)
		} else {
			println 'Ignoring: ' + group
		}
	}
}

def cs = GroupFinder.findByName(gs, "app:cs", true)

gs = GrouperSession.startRootSession()
addGroups(gs, StemFinder.findByName(gs, 'ref:course'), cs, /CS.*/)

System.out.println("************** initialize.gsh done.")
