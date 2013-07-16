class PagesController < ApplicationController
  def index
  	@vacancies = Vacancy.paginate(:page => params[:page])
  end

  def conditions
  end

  def confirmation
  end

  def about
  end
end
