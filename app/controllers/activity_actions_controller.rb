class ActivityActionsController < ApplicationController
  def index
    @activity_actions = ActivityAction.all
  end

  def show
    @activity_action = ActivityAction.find(params[:id])
  end

  def new
    @activity_action = ActivityAction.new
  end

  def create
    @activity_action = ActivityAction.new
    @activity_action.activity_id = params[:activity_id]
    @activity_action.action_id = params[:action_id]

    if @activity_action.save
      redirect_to "/activity_actions", :notice => "Activity action created successfully."
    else
      render 'new'
    end
  end

  def edit
    @activity_action = ActivityAction.find(params[:id])
  end

  def update
    @activity_action = ActivityAction.find(params[:id])

    @activity_action.activity_id = params[:activity_id]
    @activity_action.action_id = params[:action_id]

    if @activity_action.save
      redirect_to "/activity_actions", :notice => "Activity action updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @activity_action = ActivityAction.find(params[:id])

    @activity_action.destroy

    redirect_to "/activity_actions", :notice => "Activity action deleted."
  end
end
