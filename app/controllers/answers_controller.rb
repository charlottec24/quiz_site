class AnswersController < ApplicationController

	def create
		answer = Answer.new(params.require(:answer).permit(:value))
		answer.save!
		
		if (answer.question == answer.value)
			flash[:notice] = "Correct!"
			redirect_to questions_path
		else
			flash[:false] = "Incorrect!"
			redirect_to questions_path
		end
	end
end
