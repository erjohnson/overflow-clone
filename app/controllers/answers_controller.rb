class AnswersController < ApplicationController

  def new
    @question = Question.find(:question_id)
    @answer = Answer.new
  end

  def create
    @answer = Answer.new(answer_params)
    if @answer.save
      respond_to do |format|
        format.html { redirect_to answers_url }
        format.js
      end
    end
  end

private
  def answer_params
    params.require(:answer).permit(:content, :question_id).merge(user_id: current_user.id, question_id: @question.id)
  end
end
