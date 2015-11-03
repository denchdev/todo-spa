class ProjectsController < ApplicationController
	def index
    respond_with Project.all
  end

  def create
    respond_with Project.create project_params 
  end

  def show
    respond_with Project.find params[:id] 
  end

  def destroy
     respond_with Project.destroy params[:id]
  end

  def update
    project = Project.find params[:id]
    project.update project_params
    respond_with project
  end
  
  private
  def project_params
    params.require(:project).permit(:title)
  end
end
