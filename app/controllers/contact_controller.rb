class ContactController < ApplicationController
  def index
  end

  def create
  	UserMailer.contacto(params[:nombre], params[:mail],params[:asunto],params[:mensaje]).deliver_now
  	redirect_to :action => index
  end
end
