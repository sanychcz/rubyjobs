require 'spec_helper'

describe User do
	
	before do
  	@user = FactoryGirl.build(:user)
  end

	subject {@user}

	it {should respond_to (:email)}
	it {should respond_to (:password)}
	it {should respond_to (:password_confirmation)}
	it {should respond_to (:password_digest)}
	it {should respond_to (:authenticate)}

	it {should be_valid}

	describe "when email is not present" do
		before {@user.email = "" }
		it {should_not be_valid}
	end

	describe "when password is not present" do
		before {@user.password = @user.password_confirmation = "" }
		it {should_not be_valid}
	end	

	describe "when password doesn't match confirmation" do
		before {@user.password_confirmation = "missmatch" }
		it {should_not be_valid}
	end	

	describe "when password confirmation is nil" do
		before {@user.password_confirmation = nil }
		it {should_not be_valid}
	end	

	describe "when password is too short" do
  	before {@user.password = @user.password_confirmation = "a"*5}
  	it {should_not be_valid}
  end
end