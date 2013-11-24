class HomeController < ApplicationController
  def index
    @users = User.all
  end

  def app_env
    @ip = self.request.ip
    @host = self.request.host
    @domain = self.request.domain
    @port = self.request.port
    @environment = self.request.env
    @url_path = @environment['HTTP_HOST']
    @software = @environment['SERVER_SOFTWARE']
    @protocol = @environment['SERVER_PROTOCOL']
    @compression = @environment['HTTP_ACCEPT_ENCODING']
    @connection = @environment['HTTP_CONNECTION']
    @keep_alive = @environment['HTTP_KEEP_ALIVE']
    @http_accept = @environment['HTTP_ACCEPT']
    @app_root = @environment['DOCUMENT_ROOT']
    @remote_port = @environment['REMOTE_PORT']
    @referrer = @environment['HTTP_REFERER']
    @remote_ip = self.request.remote_ip
    @agent = self.request.user_agent

    @rails_environment = Rails.env
    @rails_environment_path = Rails.root
    @database_host = Rails.configuration.database_configuration[Rails.env]["host"] ? Rails.configuration.database_configuration[Rails.env]["host"] : "N/A"
    @database_port = Rails.configuration.database_configuration[Rails.env]["port"] ? Rails.configuration.database_configuration[Rails.env]["port"] : "N/A"
    @database = Rails.configuration.database_configuration[Rails.env]["database"] ? Rails.configuration.database_configuration[Rails.env]["database"] : "N/A"
    @database_type = Rails.configuration.database_configuration[Rails.env]["adapter"] ? Rails.configuration.database_configuration[Rails.env]["adapter"] : "N/A"
    @database_user = Rails.configuration.database_configuration[Rails.env]["username"] ? Rails.configuration.database_configuration[Rails.env]["username"] : "N/A"

    @gems = Gem.loaded_specs
  end

end
