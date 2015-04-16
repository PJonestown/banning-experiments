class SessionsController < ApplicationController

  def new

  end

  def create
    user = User.find by(name: params[:session][:name].downcase)
    if user
    else
      flash.now[:danger] = 'name not in database'
      render 'new'
    end

  end

  def destroy

  end
end
