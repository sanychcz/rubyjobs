class VacanciesController < ApplicationController
	
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
			redirect_to @vacancy
		else
			render 'new'
		end
	end

	def toggle_approve
		@vacancy = Vacancy.find(params[:id])
		@vacancy.toggle!(:confirmed)
		render :nothing => true
	end 
end
