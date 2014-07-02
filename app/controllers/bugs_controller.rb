class BugsController < ApplicationController
  load_and_authorize_resource
  def index
    @bug=Bug.all
  end

  def create
  	@bug = Bug.new(params[:bug])

    @bug.creator_id=current_user.id
    if @bug.save
      redirect_to bugs_path, :alert => "Bug reported successfuly" 
    else
      @array = User.where(role: 'developer').all;
      @project = Project.all;
      flash.now[:alert] = @bug.errors
      render :new
    end
  end

  def show
    @bug=Bug.find(params[:id])
  end

  def new
  	@array = User.where(role: 'developer').all;
    @project = Project.all;
    @bug = Bug.new    
    #User.where(role: 'developer').map { |p| {value: p.id, label: p.email} };
  end
end
