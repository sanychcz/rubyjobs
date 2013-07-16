class ChangeColumnInVacancies < ActiveRecord::Migration
  def up
  	change_column :vacancies, :salary, :integer
  end

  def down
  	change_column :vacancies, :salary, :decimal
  end
end
