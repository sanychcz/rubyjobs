class AddColumnToVacancies < ActiveRecord::Migration
  def change
  	add_column :vacancies, :details, :string
  end
end
