class VotesController < ApplicationController
  before_filter :load_votable

  def index
    @votes = @votable.votes
  end

  def new
    @vote = @votable.votes.new
  end

  def create
    @vote = @votable.votes.new(vote_params)
    if @vote.save
      redirect_to @votable, notice: "Comment created."
    else
      render :new
    end
  end

private
  def vote_params
    params.require(:vote).permit(:user_id, :question_id, :answer_id, :votable_id, :votable_type).merge(user_id: current_user.id)
  end

  def load_votable
    klass = [Question, Answer, User].detect { |c| params["#{c.name.underscore}_id"] }
    @votable = klass.find(params["#{klass.name.underscore}_id"])
    ninja
  end
end
