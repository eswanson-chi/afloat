class MyDevicesController < ApplicationController
  def index
    @my_devices = MyDevice.all
  end

  def show
    @my_device = MyDevice.find(params[:id])
  end

  def new
    @my_device = MyDevice.new
  end

  def create
    @my_device = MyDevice.new
    @my_device.opsystem_id = params[:opsystem_id]
    @my_device.nickename = params[:nickename]
    @my_device.active = params[:active]

    if @my_device.save
      redirect_to "/my_devices", :notice => "My device created successfully."
    else
      render 'new'
    end
  end

  def edit
    @my_device = MyDevice.find(params[:id])
  end

  def update
    @my_device = MyDevice.find(params[:id])

    @my_device.opsystem_id = params[:opsystem_id]
    @my_device.nickename = params[:nickename]
    @my_device.active = params[:active]

    if @my_device.save
      redirect_to "/my_devices", :notice => "My device updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @my_device = MyDevice.find(params[:id])

    @my_device.destroy

    redirect_to "/my_devices", :notice => "My device deleted."
  end
end
