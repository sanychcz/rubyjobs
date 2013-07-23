class VacanciesController < ApplicationController

	before_filter :signed_in_user, :only => [:edit, :destroy]
	before_filter :confirmed?, :only => :show	

	def index
		@vacancies = Vacancy.all
	end

	def show
		@vacancy = Vacancy.find(params[:id])
	end

	def new
		@vacancy = Vacancy.new
	end

	def create
		@vacancy = Vacancy.new(params[:vacancy])
		if @vacancy.save
			redirect_to "/confirmation"
		else
			render 'new'
		end
	end

	def edit
		@vacancy = Vacancy.find(params[:id])
	end

	def update
		@vacancy = Vacancy.find(params[:id])
		if @vacancy.update_attributes(params[:vacancy])
		  redirect_to current_user
		else
		  render "edit"
		end 
	end 

	def destroy
		Vacancy.find(params[:id]).destroy
		redirect_to current_user
	end

	private

	def confirmed?
		@vacancy = Vacancy.find(params[:id])
		redirect_to root_url unless @vacancy.confirmed?
	end

end
