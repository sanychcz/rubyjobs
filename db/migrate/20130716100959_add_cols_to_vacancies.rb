class AddColsToVacancies < ActiveRecord::Migration
  def change
  	add_column :vacancies, :distance, :boolean
  	add_column :vacancies, :office, :boolean
  	add_column :vacancies, :salary, :decimal
  end
end
