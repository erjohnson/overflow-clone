class QuestionsController < ApplicationController

  def index
    @questions = Question.all
  end

  def new
    @question = Question.new
  end

  def create
    @question = Question.new(question_params)
    if @question.save
      respond_to do |format|
        format.html { redirect_to questions_url }
        format.js
      end
    end
  end

private
  def question_params
    params.require(:question).permit(:content).merge(user_id: current_user.id)
  end
end
