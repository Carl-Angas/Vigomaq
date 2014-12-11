class AdminController < ApplicationController
  before_filter :authenticate_user!
  respond_to :html

  def index
    if not(user_signed_in? and current_user.tipo == 2)
      redirect_to "/"
    else
    end

  end

end
