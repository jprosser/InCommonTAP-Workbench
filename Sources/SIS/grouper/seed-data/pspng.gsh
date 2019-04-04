exit;

GrouperSession grouperSession = GrouperSession.startRootSession();
long gshTotalObjectCount = 0L;
long gshTotalChangeCount = 0L;
long gshTotalErrorCount = 0L;
#StemSave stemSave = new StemSave(grouperSession).assignName("etc:pspng").assignCreateParentStemsIfNotExist(true).assignDescription("Location for pspng-management objects.").assignDisplayName("etc:pspng");
#stem = stemSave.save();
#gshTotalObjectCount++;
#if (stemSave.getSaveResultType() != SaveResultType.NO_CHANGE) { System.out.println("Made change for stem: " + stem.getName()); gshTotalChangeCount++;}
System.out.println(new Date() + " Done with folders, objects: " + gshTotalObjectCount + ", expected approx total: 8, changes: " + gshTotalChangeCount + ", known errors (view output for full list): " + gshTotalErrorCount);
System.out.println(new Date() + " Done with groups, objects: " + gshTotalObjectCount + ", expected approx total: 8, changes: " + gshTotalChangeCount + ", known errors (view output for full list): " + gshTotalErrorCount);
System.out.println(new Date() + " Done with composites, objects: " + gshTotalObjectCount + ", expected approx total: 8, changes: " + gshTotalChangeCount + ", known errors (view output for full list): " + gshTotalErrorCount);
AttributeDefSave attributeDefSave = new AttributeDefSave(grouperSession).assignName("etc:pspng:do_not_provision_to_def").assignCreateParentStemsIfNotExist(true).assignToGroup(true).assignToStem(true).assignAttributeDefType(AttributeDefType.type).assignMultiAssignable(true).assignMultiValued(true).assignValueType(AttributeDefValueType.string);
AttributeDef attributeDef = attributeDefSave.save();
gshTotalObjectCount++;
if (attributeDefSave.getSaveResultType() != SaveResultType.NO_CHANGE) {System.out.println("Made change for attributeDef: " + attributeDef.getName()); gshTotalChangeCount++;}
AttributeDefSave attributeDefSave = new AttributeDefSave(grouperSession).assignName("etc:pspng:provision_to_def").assignCreateParentStemsIfNotExist(true).assignToGroup(true).assignToStem(true).assignAttributeDefType(AttributeDefType.type).assignMultiAssignable(true).assignMultiValued(true).assignValueType(AttributeDefValueType.string);
AttributeDef attributeDef = attributeDefSave.save();
gshTotalObjectCount++;
if (attributeDefSave.getSaveResultType() != SaveResultType.NO_CHANGE) {System.out.println("Made change for attributeDef: " + attributeDef.getName()); gshTotalChangeCount++;}
System.out.println(new Date() + " Done with attribute definitions, objects: " + gshTotalObjectCount + ", expected approx total: 8, changes: " + gshTotalChangeCount + ", known errors (view output for full list): " + gshTotalErrorCount);
System.out.println(new Date() + " Done with role hierarchies, objects: " + gshTotalObjectCount + ", expected approx total: 8, changes: " + gshTotalChangeCount + ", known errors (view output for full list): " + gshTotalErrorCount);
attributeDef = AttributeDefFinder.findByName("etc:pspng:do_not_provision_to_def", false);
if (attributeDef != null) { int changeCount = attributeDef.getAttributeDefActionDelegate().configureActionList("assign"); gshTotalObjectCount+=1; if (changeCount > 0) { gshTotalChangeCount+=changeCount; System.out.println("Made " + changeCount + " changes for actionList of attributeDef: etc:pspng:do_not_provision_to_def");  } } else { gshTotalErrorCount++;  System.out.println("ERROR: cant find attributeDef: 'etc:pspng:do_not_provision_to_def'"); }
attributeDef = AttributeDefFinder.findByName("etc:pspng:provision_to_def", false);
if (attributeDef != null) { int changeCount = attributeDef.getAttributeDefActionDelegate().configureActionList("assign"); gshTotalObjectCount+=1; if (changeCount > 0) { gshTotalChangeCount+=changeCount; System.out.println("Made " + changeCount + " changes for actionList of attributeDef: etc:pspng:provision_to_def");  } } else { gshTotalErrorCount++;  System.out.println("ERROR: cant find attributeDef: 'etc:pspng:provision_to_def'"); }
System.out.println(new Date() + " Done with attribute actions, objects: " + gshTotalObjectCount + ", expected approx total: 8, changes: " + gshTotalChangeCount + ", known errors (view output for full list): " + gshTotalErrorCount);
System.out.println(new Date() + " Done with attribute action hierarchies, objects: " + gshTotalObjectCount + ", expected approx total: 8, changes: " + gshTotalChangeCount + ", known errors (view output for full list): " + gshTotalErrorCount);
Subject subject = SubjectFinder.findByIdAndSource("GrouperSystem", "g:isa", false);
if (subject == null) { gshTotalErrorCount++; System.out.println("Error: cant find subject: g:isa: GrouperSystem");  }
Privilege privilege = Privilege.listToPriv("stemAdmins", false);
Stem stem = StemFinder.findByName(grouperSession, "etc:pspng", false);
if (privilege != null) { if (subject != null) { if (stem != null) { boolean changed = stem.grantPriv(subject, privilege, false);   gshTotalObjectCount++;  if (changed) { gshTotalChangeCount++;  System.out.println("Made change for stem privilege: " + stem.getName() + ", privilege: " + privilege + ", subject: " + GrouperUtil.subjectToString(subject)); } } else { gshTotalErrorCount++; System.out.println("ERROR: cant find stem: 'etc:pspng'"); } }  }
System.out.println(new Date() + " Done with memberships and privileges, objects: " + gshTotalObjectCount + ", expected approx total: 8, changes: " + gshTotalChangeCount + ", known errors (view output for full list): " + gshTotalErrorCount);
AttributeDef attributeDef = AttributeDefFinder.findByName("etc:pspng:do_not_provision_to_def", false);
if (attributeDef != null) {  AttributeDefNameSave attributeDefNameSave = new AttributeDefNameSave(grouperSession, attributeDef).assignName("etc:pspng:do_not_provision_to").assignCreateParentStemsIfNotExist(true).assignDescription("Defines what provisioners should not process a group or groups within a folder. Since the default is already for provisioners to not provision any groups, this attribute is to override a provision_to attribute set on an ancestor folder. ").assignDisplayName("etc:pspng:do_not_provision_to");  AttributeDefName attributeDefName = attributeDefNameSave.save();  gshTotalObjectCount++;  if (attributeDefNameSave.getSaveResultType() != SaveResultType.NO_CHANGE) {gshTotalChangeCount++;  System.out.println("Made change for attributeDefName: " + attributeDefName.getName()); }   } else { gshTotalErrorCount++;  System.out.println("ERROR: cant find attributeDef: 'etc:pspng:do_not_provision_to_def'"); }
AttributeDef attributeDef = AttributeDefFinder.findByName("etc:pspng:provision_to_def", false);
if (attributeDef != null) {  AttributeDefNameSave attributeDefNameSave = new AttributeDefNameSave(grouperSession, attributeDef).assignName("etc:pspng:provision_to").assignCreateParentStemsIfNotExist(true).assignDescription("Defines what provisioners should process a group or groups within a folder").assignDisplayName("etc:pspng:provision_to");  AttributeDefName attributeDefName = attributeDefNameSave.save();  gshTotalObjectCount++;  if (attributeDefNameSave.getSaveResultType() != SaveResultType.NO_CHANGE) {gshTotalChangeCount++;  System.out.println("Made change for attributeDefName: " + attributeDefName.getName()); }   } else { gshTotalErrorCount++;  System.out.println("ERROR: cant find attributeDef: 'etc:pspng:provision_to_def'"); }
System.out.println(new Date() + " Done with attribute names, objects: " + gshTotalObjectCount + ", expected approx total: 8, changes: " + gshTotalChangeCount + ", known errors (view output for full list): " + gshTotalErrorCount);
System.out.println(new Date() + " Done with attribute name hierarchies, objects: " + gshTotalObjectCount + ", expected approx total: 8, changes: " + gshTotalChangeCount + ", known errors (view output for full list): " + gshTotalErrorCount);
System.out.println(new Date() + " Done with attribute definition scopes, objects: " + gshTotalObjectCount + ", expected approx total: 8, changes: " + gshTotalChangeCount + ", known errors (view output for full list): " + gshTotalErrorCount);
Set attributeAssignIdsAlreadyUsed = new HashSet();
System.out.println(new Date() + " Script complete: total objects, objects: " + gshTotalObjectCount + ", expected approx total: 8, changes: " + gshTotalChangeCount + ", known errors (view output for full list): " + gshTotalErrorCount);
# t1j - now assign those attributes to the basis:courses and ref:affiliations
# group in order to have them provisioned by the groupOfUniqueNames provisioner
affilStem = StemFinder.findByName(grouperSession, "ref:affiliations", true);
affilProvisionTo = AttributeDefNameFinder.findByName("etc:pspng:provision_to", true);
affilStem.getAttributeDelegate().addAttribute(affilProvisionTo);
affilStem.getAttributeValueDelegate().addValue("etc:pspng:provision_to", "pspng_groupOfUniqueNames");
affilStem.getAttributeValueDelegate().addValue("etc:pspng:provision_to", "pspng_attributes");
affilStem.getAttributeValueDelegate().addValue("etc:pspng:provision_to", "pspng_memberof");
# basis:courses folder?
affilStem = StemFinder.findByName(grouperSession, "basis:courses", true);
affilProvisionTo = AttributeDefNameFinder.findByName("etc:pspng:provision_to", true);
affilStem.getAttributeDelegate().addAttribute(affilProvisionTo);
affilStem.getAttributeValueDelegate().addValue("etc:pspng:provision_to", "pspng_memberof");

# app tree. Each app folder needs to it set.
# You could also do this just on app:canvas:users group for example.
# but this opens the opportunity to demostrate some filtering stuff in shibboleth
# Canvas:
affilStem = StemFinder.findByName(grouperSession, "app:canvas", true);
affilProvisionTo = AttributeDefNameFinder.findByName("etc:pspng:provision_to", true);
affilStem.getAttributeDelegate().addAttribute(affilProvisionTo);
affilStem.getAttributeValueDelegate().addValue("etc:pspng:provision_to", "pspng_memberof");
# TomJordanPoint Provisioning Engine uses LDAP groups (not memberof) to drive provisioning out to canvas
affilStem.getAttributeValueDelegate().addValue("etc:pspng:provision_to", "pspng_groupOfUniqueNames");
# Portal:
affilStem = StemFinder.findByName(grouperSession, "app:portal", true);
affilProvisionTo = AttributeDefNameFinder.findByName("etc:pspng:provision_to", true);
affilStem.getAttributeDelegate().addAttribute(affilProvisionTo);
affilStem.getAttributeValueDelegate().addValue("etc:pspng:provision_to", "pspng_memberof");
# Grouper:
affilStem = StemFinder.findByName(grouperSession, "app:grouper", true);
affilProvisionTo = AttributeDefNameFinder.findByName("etc:pspng:provision_to", true);
affilStem.getAttributeDelegate().addAttribute(affilProvisionTo);
affilStem.getAttributeValueDelegate().addValue("etc:pspng:provision_to", "pspng_memberof");
