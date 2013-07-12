class UsersController < ApplicationController

	before_filter :signed_in_user

  def new
  	@user = User.new 	
  end

  def create
  	@user = User.new(params[:user])
  	if @user.save
  		redirect_to @user
  	else
  		render 'new'
  	end
  end

  def show
  	@user = User.find(params[:id])
  end
end
