class CommentsController < ApplicationController
  def index
    project = Project.find params[:project_id] 
    task = project.tasks.find params[:task_id]
    comments = task.comments
    respond_with project, task, comments
  end 

  def show
    project = Project.find params[:project_id] 
    task = project.tasks.find params[:task_id]
    comment = task.comments.find params[:id] 
    respond_with project, task, comment
  end

  def create
    project = Project.find params[:project_id] 
    task = project.tasks.find params[:task_id]
    comment = task.comments.create comment_params    
    respond_with project, task, comment
  end 

  def update
    project = Project.find params[:project_id]
    task = project.tasks.find params[:task_id]
    comment = task.comments.find params[:id] 
    comment.update comment_params
    respond_with project, task, comment
  end

  def destroy
    project = Project.find params[:project_id] 
    task = project.tasks.find params[:task_id]
    comment = task.comments.destroy params[:id]    
    respond_with project, task, comment
  end

  private
  def comment_params
    params.require(:comment).permit(:text)
  end
end
