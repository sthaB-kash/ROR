class SessionsController < ApplicationController
  def new; end

  def create
    user = User.find_by_email(params[:email])
    if user && user.password == params[:password]
      session[:user_id] = user.id
      redirect_to root_path, notice: 'Logged in!'
    else
      flash.now.alert = 'Email or password is invalid'
      render 'new', notice: 'Logged in!'
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path, notice: 'Logged out!'
  end
end
