class Question < ActiveRecord::Base

	# has_and_belongs_to_many :users
	has_many :answers

		def self.compare(answer)
		Question.find_by_answer(answer)#match_password(password)
	end

end
