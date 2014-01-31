class SuperlativesController < ApplicationController

  def index
    @superlatives = Superlative.all
    @superlative = Superlative.new
  end

  def create
    binding.pry
    @superlative = Superlative.new(superlative_params)
    if @superlative.save
      flash[:success] = "yay, new superlative"
      redirect_to superlatives_path
    else
      flash[:alert] = "No superlative saved"
      redirect_to superlatives_path
    end
  end

  def show
    @superlative = Superlative.find(params[:id])
    @launchers = Launcher.all
    @vote = Vote.new
  end

  private

  def superlative_params
    params.require(:superlative).permit(:name)
  end
end
