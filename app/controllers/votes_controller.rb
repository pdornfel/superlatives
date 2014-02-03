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
      flash.now[:notice] = "Thanks for voting!"
      redirect_to superlative_path(superlative)
    else
      flash.now[:notice] = "Sorry, we encountered an error!"
      redirect_to superlatives_path
    end
  end

  # private
  # def vote_params
  #   params.require(:vote).permit(:launcher, :superlative_id).merge(user: :current_user)
  # end

end
