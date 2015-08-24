class AppsController < ApplicationController
  def index
    @apps = App.all
  end

  def show
    @app = App.find(params[:id])
  end

  def new
    @app = App.new
  end

  def create
    @app = App.new
    @app.name = params[:name]
    @app.itunes_id = params[:itunes_id]
    @app.image = params[:image]

    if @app.save
      redirect_to "/apps", :notice => "App created successfully."
    else
      render 'new'
    end
  end

  def edit
    @app = App.find(params[:id])
  end

  def update
    @app = App.find(params[:id])

    @app.name = params[:name]
    @app.itunes_id = params[:itunes_id]
    @app.image = params[:image]

    if @app.save
      redirect_to "/apps", :notice => "App updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @app = App.find(params[:id])

    @app.destroy

    redirect_to "/apps", :notice => "App deleted."
  end
end
