require 'spec_helper'

describe "Pages" do

	subject { page }

	describe "index page" do
		before { visit root_path }
		it {should have_title full_title "All vacancies"}
	end

	describe "contact page" do
		before { visit contact_path }
		it { should have_title full_title "Contact" }
	end

	describe "about page" do
		before { visit about_path }
		it { should have_title full_title "About" }
	end

	describe "conditions page" do
		before { visit conditions_path }
		it { should have_title full_title "Conditions" }
	end 
end
