class LaunchersController < ApplicationController

  def new
    @group = Group.find(params[:group_id])
    @launchers = Launcher.all
    @launcher = Launcher.new
  end

  def index
    @launchers = Launcher.all
    @launcher = Launcher.new
  end

  def create
    group = Group.find(params[:group_id])
    launcher = Launcher.new(launcher_params)
    launcher.group = group
    if launcher.save
      flash[:notice] = "Congrats yo"
      redirect_to new_group_launcher_path(group)
    else
      flash[:error] = "ERRRRR"
      redirect_to new_group_launcher_path(group)
    end
  end

  private

  def launcher_params
    params.require(:launcher).permit(:name)
  end

end