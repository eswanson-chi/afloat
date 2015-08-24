class GroupUsersController < ApplicationController
  def index
    @group_users = GroupUser.all
  end

  def show
    @group_user = GroupUser.find(params[:id])
  end

  def new
    @group_user = GroupUser.new
  end

  def create
    @group_user = GroupUser.new
    @group_user.group_id = params[:group_id]
    @group_user.user_id = params[:user_id]

    if @group_user.save
      redirect_to "/group_users", :notice => "Group user created successfully."
    else
      render 'new'
    end
  end

  def edit
    @group_user = GroupUser.find(params[:id])
  end

  def update
    @group_user = GroupUser.find(params[:id])

    @group_user.group_id = params[:group_id]
    @group_user.user_id = params[:user_id]

    if @group_user.save
      redirect_to "/group_users", :notice => "Group user updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @group_user = GroupUser.find(params[:id])

    @group_user.destroy

    redirect_to "/group_users", :notice => "Group user deleted."
  end
end
