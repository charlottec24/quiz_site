class AnswersController < ApplicationController

	def create
		answer = Answer.new(params.require(:answer).permit(:value, :question_id))
		# answer.user = current_user
		answer.save!
		question = answer.question

		if (question.answer == answer.value)
			# redirect_to answers_path
			flash[:notice] = "Correct!"
		else
			# redirect_to answers_path
			flash[:notice] = "Incorrect!"
		end
	end

end
