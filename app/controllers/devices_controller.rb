class DevicesController < ApplicationController
  def index
    @devices = Device.all
  end

  def show
    @device = Device.find(params[:id])
  end

  def new
    @device = Device.new
  end

  def create
    @device = Device.new
    @device.manufacturer_id = params[:manufacturer_id]
    @device.model_number = params[:model_number]
    @device.internal_name = params[:internal_name]
    @device.identifier = params[:identifier]
    @device.name = params[:name]
    @device.image = params[:image]

    if @device.save
      redirect_to "/devices", :notice => "Device created successfully."
    else
      render 'new'
    end
  end

  def edit
    @device = Device.find(params[:id])
  end

  def update
    @device = Device.find(params[:id])

    @device.manufacturer_id = params[:manufacturer_id]
    @device.model_number = params[:model_number]
    @device.internal_name = params[:internal_name]
    @device.identifier = params[:identifier]
    @device.name = params[:name]
    @device.image = params[:image]

    if @device.save
      redirect_to "/devices", :notice => "Device updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @device = Device.find(params[:id])

    @device.destroy

    redirect_to "/devices", :notice => "Device deleted."
  end
end
