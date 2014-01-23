class LaunchersController < ApplicationController

  def index
    @superlative = Superlative.find(params[:superlative_id])
    @launchers = Launcher.all
    @launcher = Launcher.new
  end

  def create
    launcher = Launcher.new(launcher_params)
    if launcher.save
      flash[:notice] = "Congrats yo"
      redirect_to launchers_path
    else
      flash[:error] = "ERRRRR"
      redirect_to launchers_path
    end
  end

  private

  def launcher_params
    params.require(:launcher).permit(:name)
  end

end