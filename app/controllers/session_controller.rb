class SessionController < ApplicationController

  def new
  end

  def create
    user = User.find_by(params[:username])
    if user && user.password == params[:password]
      session[:user_id] = user.id
      redirect_to root_path
    else
      render 'new'
    end
  end

end
