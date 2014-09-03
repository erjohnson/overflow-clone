class QuestionsController < ApplicationController

  def index
    @questions = Question.all
  end

  def new
    @question = Question.new
  end

private
  def question_params
    params.require(:question).permit(:content)
  end
end
