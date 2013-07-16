class QuestionsController < ApplicationController

	def create
		question = Question.create!(question_params)
		# user = question.user
		 # current_user.id
		redirect_to new_questions_path
	end

	def new
		@question = Question.new(:user => current_user)
	end

	def show
		@show_question = Question.order("RANDOM()").first
		@answer = Answer.new(:question => @show_question, :user => current_user)
	end

	private

	  def question_params
	    params.require(:question).permit(:text, :answer, :user_id)
	  end
	
end

