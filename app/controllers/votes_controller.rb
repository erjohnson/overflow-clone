class VotesController < ApplicationController

  def index
  end

  def new
  end

  def create
  end

private
  def vote_params
    params.require(:vote).permit(:answer_id).merge(user_id: current_user.id)
  end
end
