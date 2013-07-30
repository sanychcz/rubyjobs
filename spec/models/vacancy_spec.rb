require 'spec_helper'

describe Vacancy do
	
	before do
		@vacancy = FactoryGirl.build(:vacancy)
	end

	subject {@vacancy}

	it { should respond_to (:title) }
	it { should respond_to (:description) }
	it { should respond_to (:city) }
	it { should respond_to (:junior) }
	it { should respond_to (:hot) }
	it { should respond_to (:email) }
	it { should respond_to (:company) }
	it { should respond_to (:web) }
	it { should respond_to (:phone) }
	it { should respond_to (:person) }
	it { should respond_to (:distance) }
	it { should respond_to (:office) }
	it { should respond_to (:salary) }
	it { should respond_to (:confirmed) }
	it { should respond_to (:details) }

	it { should be_valid }
	it { should_not be_confirmed }

	describe "when title is not present" do
		before { @vacancy.title = "" }
		it { should_not be_valid }
	end

	describe "when description is not present" do
		before { @vacancy.description = "" }
		it { should_not be_valid }
	end
	
	describe "when city is not present" do
		before { @vacancy.city = "" }
		it { should_not be_valid }
	end
	
	describe "when email is not present" do
		before { @vacancy.email = "" }
		it { should_not be_valid }
	end
	
	describe "invalid email format" do
		it "should be invalid" do
			invalid_emails = %w[user@foo,com user_at_foo.org example.user@foo.
                     foo@bar_baz.com foo@bar+baz.com]
    	invalid_emails.each do |invalid_email|
    		@vacancy.email = invalid_email 
    		@vacancy.should_not be_valid                
    	end
    end		
	end

	describe "valid email format" do
		it "should be valid" do		
			valid_emails = %w[user@foo.COM A_US-ER@f.b.org frst.lst@foo.jp a+b@baz.cn]
    	valid_emails.each do |valid_email|    	
    		@vacancy.email = valid_email
    		@vacancy.should be_valid
    	end	                 
    end	
	end

	describe "when company is not present" do
		before { @vacancy.company = "" }
		it { should_not be_valid }
	end
	
	describe "when phone is not present" do
		before { @vacancy.phone = "" }
		it { should_not be_valid }
	end

	describe "when person is not present" do
		before { @vacancy.person = "" }
		it { should_not be_valid }
	end
	
  describe "vacancies order" do 

		let!(:old_vacancy) do
			FactoryGirl.build(:vacancy, created_at: 1.day.ago)
		end

		let!(:new_vacancy) do
			FactoryGirl.build(:vacancy, created_at: 1.hour.ago )
		end 

		before do
			@vacancies = Vacancy.all
		end	

		it "should have correct order" do
			@vacancies = [new_vacancy, old_vacancy]
		end
	end 
end
