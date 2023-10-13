
provisioner_name="midPoint";
GrouperSession grouperSession = GrouperSession.startRootSession();

def setProvOnStem(grouperSession,provisioner_name,folder_name) {
  AttributeAssign attributeAssignMarker = null;
  attributeAssignMarker = new AttributeAssignSave(grouperSession).assignOwnerStemName(folder_name).assignNameOfAttributeDefName("etc:provisioning:provisioningMarker").save();
  new AttributeAssignSave(grouperSession).assignOwnerAttributeAssign(attributeAssignMarker).assignNameOfAttributeDefName("etc:provisioning:provisioningDirectAssign").addValue("true").save();
  new AttributeAssignSave(grouperSession).assignOwnerAttributeAssign(attributeAssignMarker).assignNameOfAttributeDefName("etc:provisioning:provisioningDoProvision").addValue(provisioner_name).save();
  new AttributeAssignSave(grouperSession).assignOwnerAttributeAssign(attributeAssignMarker).assignNameOfAttributeDefName("etc:provisioning:provisioningStemScope").addValue("sub").save();
  new AttributeAssignSave(grouperSession).assignOwnerAttributeAssign(attributeAssignMarker).assignNameOfAttributeDefName("etc:provisioning:provisioningTarget").addValue(provisioner_name).save();
  new AttributeAssignSave(grouperSession).assignOwnerAttributeAssign(attributeAssignMarker).assignNameOfAttributeDefName("etc:provisioning:provisioningMetadataJson").addValue("{\"destination\":\"midpoint\",\"actor\":\"initial load\"}").save();

}

def setProvOnGroup(grouperSession,provisioner_name,group_name) {
  AttributeAssign attributeAssignMarker = null;
  attributeAssignMarker = new AttributeAssignSave(grouperSession).assignOwnerGroupName(group_name).assignNameOfAttributeDefName("etc:provisioning:provisioningMarker").save();
  new AttributeAssignSave(grouperSession).assignOwnerAttributeAssign(attributeAssignMarker).assignNameOfAttributeDefName("etc:provisioning:provisioningDirectAssign").addValue("true").save();
  new AttributeAssignSave(grouperSession).assignOwnerAttributeAssign(attributeAssignMarker).assignNameOfAttributeDefName("etc:provisioning:provisioningDoProvision").addValue(provisioner_name).save();
  new AttributeAssignSave(grouperSession).assignOwnerAttributeAssign(attributeAssignMarker).assignNameOfAttributeDefName("etc:provisioning:provisioningStemScope").addValue("sub").save();
  new AttributeAssignSave(grouperSession).assignOwnerAttributeAssign(attributeAssignMarker).assignNameOfAttributeDefName("etc:provisioning:provisioningTarget").addValue(provisioner_name).save();
  new AttributeAssignSave(grouperSession).assignOwnerAttributeAssign(attributeAssignMarker).assignNameOfAttributeDefName("etc:provisioning:provisioningMetadataJson").addValue("{\"destination\":\"midpoint\",\"actor\":\"initial load\"}").save();

}

def setProvOnGroupWithMailListAttr(grouperSession,provisioner_name,group_name,email_list_name) {
  AttributeAssign attributeAssignMarker = null;
  attributeAssignMarker = new AttributeAssignSave(grouperSession).assignOwnerGroupName(group_name).assignNameOfAttributeDefName("etc:provisioning:provisioningMarker").save();
  new AttributeAssignSave(grouperSession).assignOwnerAttributeAssign(attributeAssignMarker).assignNameOfAttributeDefName("etc:provisioning:provisioningDirectAssign").addValue("true").save();
  new AttributeAssignSave(grouperSession).assignOwnerAttributeAssign(attributeAssignMarker).assignNameOfAttributeDefName("etc:provisioning:provisioningDoProvision").addValue(provisioner_name).save();
  new AttributeAssignSave(grouperSession).assignOwnerAttributeAssign(attributeAssignMarker).assignNameOfAttributeDefName("etc:provisioning:provisioningStemScope").addValue("sub").save();
  new AttributeAssignSave(grouperSession).assignOwnerAttributeAssign(attributeAssignMarker).assignNameOfAttributeDefName("etc:provisioning:provisioningTarget").addValue(provisioner_name).save();
  new AttributeAssignSave(grouperSession).assignOwnerAttributeAssign(attributeAssignMarker).assignNameOfAttributeDefName("etc:provisioning:provisioningMetadataJson").addValue("{\"destination\":\"midpoint\",\"actor\":\"initial load\"}").save();
  new AttributeAssignSave(grouperSession).assignOwnerAttributeAssign(attributeAssignMarker).assignNameOfAttributeDefName("etc:provisioning:provisioningMetadataJson").addValue("{\"md_grouper_emailListName\":\"" + email_list_name + "\"}").save();

}


setProvOnStem(grouperSession,provisioner_name,"app")
setProvOnGroupWithMailListAttr(grouperSession,provisioner_name,"app:mailinglist:chess","chessclub@example.edu")
setProvOnGroupWithMailListAttr(grouperSession,provisioner_name,"app:mailinglist:idm-fans","idmfans@example.edu")
setProvOnStem(grouperSession,provisioner_name,"test")
setProvOnStem(grouperSession,provisioner_name,"ref:dept")
setProvOnStem(grouperSession,provisioner_name,"ref:course")
setProvOnGroup(grouperSession,provisioner_name,"ref:affiliation:alum")
setProvOnGroup(grouperSession,provisioner_name,"ref:affiliation:community")
setProvOnGroup(grouperSession,provisioner_name,"ref:affiliation:faculty")
setProvOnGroup(grouperSession,provisioner_name,"ref:affiliation:member")
setProvOnGroup(grouperSession,provisioner_name,"ref:affiliation:staff")
setProvOnGroup(grouperSession,provisioner_name,"ref:affiliation:student")

