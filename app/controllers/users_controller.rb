class UsersController < ApplicationController
  
  def index
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      redirect_to users_path, :alert => "SignUp Sucessful" 
    else
      render :new
    end
  end
end
