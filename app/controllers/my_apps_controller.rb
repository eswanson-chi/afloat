class MyAppsController < ApplicationController
  before_action :authenticate_user!

  def index
    @my_apps = MyApp.where(:my_device_id => MyDevice.where(:user_id => current_user.id))
  end

  def show
    @my_app = MyApp.find(params[:id])
  end

  def new
    @my_app = MyApp.new
  end

  def create
    @my_app = MyApp.new
    @my_app.my_device_id = params[:my_device_id]
    @my_app.app_id = params[:app_id]
    @my_app.user_id = params[:user_id]

    if @my_app.save
      redirect_to "/my_apps", :notice => "My app created successfully."
    else
      render 'new'
    end
  end

  def edit
    @my_app = MyApp.find(params[:id])
  end

  def update
    @my_app = MyApp.find(params[:id])

    @my_app.my_device_id = params[:my_device_id]
    @my_app.app_id = params[:app_id]

    if @my_app.save
      redirect_to "/my_apps", :notice => "My app updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @my_app = MyApp.find(params[:id])

    @my_app.destroy

    redirect_to "/my_apps", :notice => "My app deleted."
  end
end
