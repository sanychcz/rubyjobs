class PagesController < ApplicationController
  def index
  	@vacancies = Vacancy.all
  end
end
