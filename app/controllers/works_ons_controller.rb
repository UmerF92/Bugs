class WorksOnsController < ApplicationController
  def index
  end

  def create
  	@p = Project.new(params[:id])
    @work=WorksOn.new
    @work.project_id=@p.id
    @work.user_id=current_user.id
    if @work.save
      redirect_to projects_path, :alert => "User Added Successfully" 
    else
      render :new
    end
  end

  def new
  end
end
