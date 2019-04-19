require 'net/ldap'

class User < ApplicationRecord
    has_and_belongs_to_many :courses

    def name
        return givenname + " " + surname
    end

    def write_to_ldap
        ldap_host = LDAP_CONFIG['host']
        ldap_port = LDAP_CONFIG['port']
        ldap_base = LDAP_CONFIG['base']
        ldap_user = LDAP_CONFIG['admin']
        ldap_pass = LDAP_CONFIG['pass']

        # create the DN for the object
        dn = "uid="+uid+","+ldap_base
        
        # create the list of attributes for the object
        attr = {
            :cn => fullName,
            :objectclass => ['organizationalperson','person','top','inetOrgPerson','eduPerson'],
            :givenName => givenname,
            :sn => surname,
            :uid => uid,
            :userPassword => password
        }

        # connect and add the entry
        Net::LDAP.open( :host => ldap_host, :port => ldap_port, :base => ldap_base, :auth => { :method => :simple, :username => ldap_user, :password => ldap_pass }) do |ldap|
            ldap.add( :dn => dn, :attributes => attr)
        end
    end



end
