class GroupsController < ApplicationController
  skip_before_action :authenticate_user
  before_action :set_group, only: [:show, :edit, :update, :destroy]

  def index
    if current_user
      @group = Group.new
      @groups = current_user.groups
    end
  end

  def create
    group = Group.new(group_params)
    group.admin = current_user
    if group.save
      current_user.groups << group
      flash[:notice] = "You created a group"
      redirect_to new_group_launcher_path(group)
    else
      flash[:alert] = "Fail"
      redirect_to root_path
    end
  end

  def show

  end

  private

  def group_params
    params.require(:group).permit(:name)
  end

  def set_group
    @group = Group.find(params[:id])
  end

end