System.out.println("************** t410.gsh starting **************");

gs = GrouperSession.startRootSession()

alumIncludesGroup = GroupFinder.findByName(gs, 'ref:affiliation:alum_includes')
wprice = SubjectFinder.findById('wprice', 'person', 'ldap')
alumIncludesGroup.addMember(wprice, false)

System.out.println("************** t410.gsh done **************");
