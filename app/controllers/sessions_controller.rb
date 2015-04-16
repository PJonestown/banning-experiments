class SessionsController < ApplicationController

  def new

  end

  def create
    user = User.find_by(name: params[:session][:name].downcase)
    if user
      log_in(user) 
      redirect_to user
    else
      flash.now[:alert] = 'name not in database'
      render 'new'
    end

  end

  def destroy
    log_out
    redirect_to root_url
  end
end
