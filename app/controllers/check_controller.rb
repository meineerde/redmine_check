class CheckController < ApplicationController
  # Skip the default filters from ApplicationController.
  # They are not needed here as we don't do anything fancy.
  skip_before_filter :user_setup, :check_if_login_required, :set_localization

  # perform a check select on the database and return with HTTP 200 if it
  # succeeded or HTTP 500 if it failed for some reason
  def index
    ActiveRecord::Base.connection.execute("SELECT 1;")
    render :text => "ALIVE", :status => 200
  rescue Exception
    render :text => "ERROR",  :status => 500
  end

  # Do not log the checks into the default log.
  def logger
    @logger ||= Logger.new(StringIO.new)
  end    
end
