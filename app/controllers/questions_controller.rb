class QuestionsController < ApplicationController

	def create
		Question.create!(question_params)
		redirect_to new_questions_path
	end

	def new
		@question = Question.new
	end

	def show
		@show_question = Question.order("RANDOM()").first
		@answer = Answer.new
		# if @show_question && Question.compare(@show_question.answer)
		# 	flash[:correct] = "Correct"
		# 	# redirect_to show_questions_path
		# else
		# 	flash[:error] = "Incorrect"
		# end	
	end

	private

	  def question_params
	    params.require(:question).permit(:text, :answer)
	  end
	
end

