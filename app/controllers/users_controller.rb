class UsersController < ApplicationController
  def show
    @properties = current_user.properties
    @property = Property.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to @user
    else
      render 'new'
    end
  end

  private
  def user_params
    params.require(:user).permit(:username, :email, :password)
  end
end
