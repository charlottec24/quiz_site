class User < ActiveRecord::Base

	has_many :questions
	has_many :answers

	def create_user(user_name, password)
		User.create!({:user_name => user_name, :password => password})
	end

end
