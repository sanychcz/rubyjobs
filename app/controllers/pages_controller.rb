class PagesController < ApplicationController

  def index
  	@vacancies = Vacancy.where(:confirmed => true).paginate(:page => params[:page])
  	#@vacancies_by_city = Vacancy.find(:all, :conditions => [ 'city = ?',  "Prague" ] ) 
  end

  def conditions
  end

  def confirmation
  end

  def about
  end
end
