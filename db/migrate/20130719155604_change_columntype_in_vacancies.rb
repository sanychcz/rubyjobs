class ChangeColumntypeInVacancies < ActiveRecord::Migration
  def change
  	change_column :vacancies, :details, :text	
  end
end
