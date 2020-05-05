class SessionsController < ApplicationController

  def new
    if logged_in?
      redirect_to products_path
    end

  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      session[:user_id] = user.id
      flash[:notice] = "you have successfully logged in"
      redirect_to users_path(user)
    
    else
      flash.now[:notice] = "username or password is incorrect"
      render'new'
    end
  end

  def destroy
    session[:user_id]= nil
    flash[:notice] = "you have logged out"
    redirect_to root_path
  end
end