class VotesController < ApplicationController

  def index

  end

  def create
    superlative = Superlative.find(params[:superlative_id])
    launcher = Launcher.find(params[:vote][:launcher])
    @vote = Vote.new
    @vote.superlative = superlative
    @vote.launcher = launcher
    @vote.user = current_user
    if @vote.save
      flash[:success] = "Thanks for voting!"
      redirect_to superlative_path(superlative)
    else
      flash[:alert] = "You can't vote twice!"
      redirect_to superlative_path(superlative)
    end
  end

  def destroy
    vote = Vote.find(params[:id])
    superlative = Superlative.find(params[:superlative_id])
    if vote.destroy
      flash[:sucess] = "Vote destroyed!"
      redirect_to superlative_path(superlative)
    else
      flash[:alert] = "No"
      redirect_to superlative_path(superlative)
    end
  end

  # private
  # def vote_params
  #   params.require(:vote).permit(:launcher, :superlative_id).merge(user: :current_user)
  # end

end
