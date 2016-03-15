class MainController < ApplicationController
  def index
  end

  def create
    easy = SMSEasy::Client.new
    easy.deliver(params[:phone_number], params[:mobile_carrier], params[:message])
    redirect_to root_path
  end
end
