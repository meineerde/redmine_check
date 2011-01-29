class CheckController < ApplicationController
  
  # Skip the default filters from ApplicatipnController.
  # They are not needed here as we don't do anything fancy.
  skip_before_filter :user_setup, :check_if_login_required, :set_localization
  
  def index
    ActiveRecord::Base.connection.execute("SELECT 1;")
    render :text => "ALIVE", :status => 200
  rescue Exception
    render :text => "ERROR",  :status => 500
  end

  def logger
    @logger ||= Logger.new(StringIO.new)
  end    
end
