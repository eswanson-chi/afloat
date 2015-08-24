class ProjectGroupsController < ApplicationController
  def index
    @project_groups = ProjectGroup.all
  end

  def show
    @project_group = ProjectGroup.find(params[:id])
  end

  def new
    @project_group = ProjectGroup.new
  end

  def create
    @project_group = ProjectGroup.new
    @project_group.project_id = params[:project_id]
    @project_group.group_id = params[:group_id]

    if @project_group.save
      redirect_to "/project_groups", :notice => "Project group created successfully."
    else
      render 'new'
    end
  end

  def edit
    @project_group = ProjectGroup.find(params[:id])
  end

  def update
    @project_group = ProjectGroup.find(params[:id])

    @project_group.project_id = params[:project_id]
    @project_group.group_id = params[:group_id]

    if @project_group.save
      redirect_to "/project_groups", :notice => "Project group updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @project_group = ProjectGroup.find(params[:id])

    @project_group.destroy

    redirect_to "/project_groups", :notice => "Project group deleted."
  end
end
