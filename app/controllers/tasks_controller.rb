class TasksController < ApplicationController
  
  def index
  	project = Project.find(params[:project_id])
    tasks = project.tasks
    respond_with tasks
  end 

  def show
    project = Project.find(params[:project_id])
    task = project.tasks.find(params[:id])
    respond_with tasks
  end

  def create
    project = Project.find(params[:project_id])
    task = project.tasks.create(task_params)
    tasks = project.tasks
    respond_with tasks
  end 

  private
  def task_params
    params.require(:task).permit(:title, :position, :state, :deadline)
  end
end
