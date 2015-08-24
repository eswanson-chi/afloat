class OpsystemsController < ApplicationController
  def index
    @opsystems = Opsystem.all
  end

  def show
    @opsystem = Opsystem.find(params[:id])
  end

  def new
    @opsystem = Opsystem.new
  end

  def create
    @opsystem = Opsystem.new
    @opsystem.manufacturer_id = params[:manufacturer_id]
    @opsystem.version_name = params[:version_name]
    @opsystem.is_current = params[:is_current]

    if @opsystem.save
      redirect_to "/opsystems", :notice => "Opsystem created successfully."
    else
      render 'new'
    end
  end

  def edit
    @opsystem = Opsystem.find(params[:id])
  end

  def update
    @opsystem = Opsystem.find(params[:id])

    @opsystem.manufacturer_id = params[:manufacturer_id]
    @opsystem.version_name = params[:version_name]
    @opsystem.is_current = params[:is_current]

    if @opsystem.save
      redirect_to "/opsystems", :notice => "Opsystem updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @opsystem = Opsystem.find(params[:id])

    @opsystem.destroy

    redirect_to "/opsystems", :notice => "Opsystem deleted."
  end
end
