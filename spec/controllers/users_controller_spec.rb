require 'spec_helper'
include UserControllerSpecHelper

describe UsersController do

	it "should signup user and prompt them to login" do
		visit '/signup'
		signup_user
		page.should have_content ("Congratulations!")
	end


end
