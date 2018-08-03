class SessionsController < ApplicationController 

  def new
    @user = User.new
  end

  def create
    user = User.find_by_email(params[:email])

    if user && user.authenticate(params[:password])
      session[params[:id]] = user.id
      redirect_to home_path
    else
      flash.now.alert = "Invalid email or password"
      render "new"
    end 	

  end

  def destroy
    session[params[:id]] = nil
    redirect_to home_path    
  end
end

