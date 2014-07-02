class ProjectsController < ApplicationController
  load_and_authorize_resource
  def index
    @project=Project.all
  end

  def new
    @project = Project.new
  end

  def create
    @project = Project.new(params[:project])
    @project.manager_id=current_user.id
    if @project.save
      redirect_to projects_path, :alert => "Project Created Successfully" 
    else
      render :new
    end
  end

  def show
    def show
    @project=Project.find(params[:id])
    @temp = WorksOn.find_by_user_id(current_user.id)
  end
  end

  def workon
    @p=Project.find(params[:id])
    #@i=current_user.id
    @works=WorksOn.new
    @works.project_id= @p.id
    @works.user_id=current_user.id
    if  @works.save
    return redirect_to projects_path
    end
  end

  def delete
  end

  def destroy
  end

  def edit
  end

  def update
  end
end
