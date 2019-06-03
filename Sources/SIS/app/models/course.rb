class Course < ActiveRecord::Base
    has_and_belongs_to_many :users

	def publish_to_rabbit(action)
		# Message payload
		msg = {:course => self, :action => action}


		# TODO: connection should be pooled and created on app start?
		rabbit_connection = Bunny.new(ENV['RABBITMQ_URI'] || 'amqp://localhost')
		rabbit_connection.start
		
		channel = rabbit_connection.create_channel

		# TODO: allow user to specify exchange in config
		exchange = channel.default_exchange
		
		# Publish that something about UID changed
		# This should cover both course enrollments and general data about them.
		exchange.publish(msg.to_json, :routing_key => 'sis.course')

		logger.info('Published message: ' + msg.to_json)

		rabbit_connection.close
	end


end
