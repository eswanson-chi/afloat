class TaskAssignmentsController < ApplicationController
  before_action :authenticate_user!

  def index
    @task_assignments = TaskAssignment.all
  end

  def show
    @task_assignment = TaskAssignment.find(params[:id])
  end

  def new
    @task_assignment = TaskAssignment.new
  end

  def create
    @task_assignment = TaskAssignment.new
    @task_assignment.task_id = params[:task_id]
    @task_assignment.group_user_id = params[:group_user_id]
    @task_assignment.can_delegate = params[:can_delegate]

    if @task_assignment.save
      redirect_to "/task_assignments", :notice => "Task assignment created successfully."
    else
      render 'new'
    end
  end

  def edit
    @task_assignment = TaskAssignment.find(params[:id])
  end

  def update
    @task_assignment = TaskAssignment.find(params[:id])

    @task_assignment.task_id = params[:task_id]
    @task_assignment.group_user_id = params[:group_user_id]
    @task_assignment.can_delegate = params[:can_delegate]

    if @task_assignment.save
      redirect_to "/task_assignments", :notice => "Task assignment updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @task_assignment = TaskAssignment.find(params[:id])

    @task_assignment.destroy

    redirect_to "/task_assignments", :notice => "Task assignment deleted."
  end
end
