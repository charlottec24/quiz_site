require 'spec_helper'

describe UsersController do

	it "should signup user and prompt them to login" do
		visit '/'
		signup_user
		page.should have_content ("Congratulations!")
	end


end
