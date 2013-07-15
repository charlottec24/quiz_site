require 'spec_helper'

describe QuizController do
	 it "should generate a new quiz" do
	 	visit '/quiz/new'
	 	Quiz.generate!
	 	page.should have_content ("True")
	 end
	end

