require 'net/ldap'
require 'bunny'
require 'json'

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
        # Babb: assuming midpoint is adding to ldap? commented out for now.
        # TODO: remove publish_to_ldap from controller
        ###Net::LDAP.open( :host => ldap_host, :port => ldap_port, :base => ldap_base, :auth => { :method => :simple, :username => ldap_user, :password => ldap_pass }) do |ldap|
        ###    ldap.add( :dn => dn, :attributes => attr)
        ###end
    end

	def publish_to_rabbit(action)
		# Message payload
		msg = {:uid => uid, :action => action}


		# TODO: connection should be pooled and created on app start?
		rabbit_connection = Bunny.new(ENV['RABBITMQ_URI'] || 'amqp://localhost')
		rabbit_connection.start
		
		channel = rabbit_connection.create_channel

		# TODO: allow user to specify exchange in config
		exchange = channel.default_exchange
		
		# Publish that something about UID changed
		# This should cover both course enrollments and general data about them.
		exchange.publish(msg.to_json, :routing_key => 'sis.user')

		logger.info('Published message: ' + msg.to_json)

		rabbit_connection.close
	end


end
