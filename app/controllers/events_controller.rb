class EventsController < ApplicationController
  before_action :authenticate_user!

  def index
    @events = Event.all
  end

  def show
    @event = Event.find(params[:id])
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.new
    @event.task_id = params[:task_id]
    @event.my_app_id = params[:my_app_id]
    @event.group_user_id = params[:group_user_id]
    @event.project_group_id = params[:project_group_id]

    if @event.save
      redirect_to "/events", :notice => "Event created successfully."
    else
      render 'new'
    end
  end

  def edit
    @event = Event.find(params[:id])
  end

  def update
    @event = Event.find(params[:id])

    @event.task_id = params[:task_id]
    @event.my_app_id = params[:my_app_id]
    @event.group_user_id = params[:group_user_id]
    @event.project_group_id = params[:project_group_id]

    if @event.save
      redirect_to "/events", :notice => "Event updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @event = Event.find(params[:id])

    @event.destroy

    redirect_to "/events", :notice => "Event deleted."
  end
end
