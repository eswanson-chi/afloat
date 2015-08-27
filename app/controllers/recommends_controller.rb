class RecommendsController < ApplicationController
  before_action :authenticate_user!

  def index
    @recommends = Recommend.all
  end

  def show
    @recommend = Recommend.find(params[:id])
  end

  def new
    @recommend = Recommend.new
  end

  def create
    @recommend = Recommend.new
    @recommend.my_app_id = params[:my_app_id]
    @recommend.activity_id = params[:activity_id]
    @recommend.action_id = params[:action_id]
    @recommend.is_lifesaver = params[:is_lifesaver]

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

    redirect_to "/recommends", :notice => "Recommend deleted."
  end
end
