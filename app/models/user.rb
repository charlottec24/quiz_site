class User < ActiveRecord::Base

	has_many :questions
	has_many :answers

	# def self.create_user(user_name, password)
	# 	User.create!(user_name: user_name, password: password)
	# end

	def self.authenticate(password)
		User.find_by_password(password)#match_password(password)
	end

end
