class TasksController < ApplicationController
  before_action :authenticate_user!

  def index
    @tasks = Task.all
  end

  def show
    @task = Task.find(params[:id])
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new
    @task.app_id = params[:app_id]
    @task.app_required = params[:app_required]
    @task.project_group_id = params[:project_group_id]
    @task.activity_id = params[:activity_id]
    @task.action_id = params[:action_id]
    @task.name = params[:name]
    @task.description = params[:description]

    if @task.save
      redirect_to "/tasks", :notice => "Task created successfully."
    else
      render 'new'
    end
  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
    @task = Task.find(params[:id])

    @task.app_id = params[:app_id]
    @task.app_required = params[:app_required]
    @task.project_group_id = params[:project_group_id]
    @task.activity_id = params[:activity_id]
    @task.action_id = params[:action_id]
    @task.name = params[:name]
    @task.description = params[:description]

    if @task.save
      redirect_to "/tasks", :notice => "Task updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @task = Task.find(params[:id])

    @task.destroy

    redirect_to "/tasks", :notice => "Task deleted."
  end
end
