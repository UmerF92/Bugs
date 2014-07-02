class SessionsController < ApplicationController   
  
	def create
    user = login(params[:email], params[:password], params[:remember_me])
    if user
      redirect_to users_path, :alert => "Login Successful" 
    else
      render :new, :alert => "Email or password was invalid" 
    end
  end

  def destroy
    logout
    redirect_to users_path, :alert => "User Logout Successful"
  end
end
