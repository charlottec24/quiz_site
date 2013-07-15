class QuestionsController < ApplicationController

	def create
		Question.create!(question_params)
		redirect_to new_questions_path
	end

	def new
		@question = Question.new
	end

private

  def question_params
    params.require(:question).permit(:text, :answer)
  end
end