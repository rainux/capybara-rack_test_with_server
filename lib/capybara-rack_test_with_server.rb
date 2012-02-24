require 'capybara'
require 'capybara-rack_test_with_server/version'

class Capybara::RackTestWithServer::Driver < Capybara::RackTest::Driver
  attr_reader :rack_server

  def initialize(app, options = {})
    super

    @rack_server = Capybara::Server.new(@app)
    @rack_server.boot if Capybara.run_server
  end
end

Capybara.register_driver :rack_test_with_server do |app|
  Capybara::RackTestWithServer::Driver.new(app)
end
