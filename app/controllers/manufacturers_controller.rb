class ManufacturersController < ApplicationController
  before_action :authenticate_user!

  def index
    @manufacturers = Manufacturer.all
  end

  def show
    @manufacturer = Manufacturer.find(params[:id])
  end

  def new
    @manufacturer = Manufacturer.new
  end

  def create
    @manufacturer = Manufacturer.new
    @manufacturer.name = params[:name]

    if @manufacturer.save
      redirect_to "/manufacturers", :notice => "Manufacturer created successfully."
    else
      render 'new'
    end
  end

  def edit
    @manufacturer = Manufacturer.find(params[:id])
  end

  def update
    @manufacturer = Manufacturer.find(params[:id])

    @manufacturer.name = params[:name]

    if @manufacturer.save
      redirect_to "/manufacturers", :notice => "Manufacturer updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @manufacturer = Manufacturer.find(params[:id])

    @manufacturer.destroy

    redirect_to "/manufacturers", :notice => "Manufacturer deleted."
  end
end
