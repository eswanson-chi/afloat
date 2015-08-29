class RecommendsController < ApplicationController
  before_action :authenticate_user!

  def index
    @recommends = Recommend.where( :user_id => current_user.id)
  end

  def show
    @recommend = Recommend.find(params[:id])
  end

  def new
    @recommend = Recommend.new
    @my_app_id = params[:my_app_id]
    @app_name = params[:app_name]
    @app_image = params[:app_image]
  end

  def create

    # @my_devices = MyApp.where( :user_id == current_user)

    @recommend = Recommend.new
    @recommend.my_app_id = params[:my_app_id]
    @recommend.activity_id = params[:activity_id]
    @recommend.action_id = params[:action_id]
    @recommend.user_id = params[:user_id]
    if params[:is_lifesaver]
      @recommend.is_lifesaver = params[:is_lifesaver]
    else
      @recommend.is_lifesaver = false
    end

    if @recommend.save
      redirect_to "/recommends", :notice => "Recommend created successfully."
    else
      render 'new'
    end
  end

  def edit
    @recommend = Recommend.find(params[:id])
  end

  def update
    @recommend = Recommend.find(params[:id])

    @recommend.my_app_id = params[:my_app_id]
    @recommend.activity_id = params[:activity_id]
    @recommend.action_id = params[:action_id]
    @recommend.is_lifesaver = params[:is_lifesaver]

    if @recommend.save
      redirect_to "/recommends", :notice => "Recommend updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @recommend = Recommend.find(params[:id])

    @recommend.destroy

    redirect_to "/my_apps", :notice => "Recommend deleted."
  end
end
