# This file is used by Rack-based servers to start the application.

require_relative 'config/environment'

map '/sis' do
  run Rails.application
end

map '/' do
  run Rails.application
end
