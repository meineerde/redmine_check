class CheckController < ApplicationController
  def index
    ActiveRecord::Base.connection.execute("SELECT true;")
    render :text => "ALIVE", :status => 200
  rescue Exception
    render :text => "ERROR",  :status => 500
  end

  def logger
    @logger ||= Logger.new(StringIO.new)
  end    
end
