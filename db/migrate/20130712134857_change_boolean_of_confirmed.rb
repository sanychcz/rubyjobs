class ChangeBooleanOfConfirmed < ActiveRecord::Migration
  def up
  	change_column :vacancies, :confirmed, :boolean, :default => false
  end

  def down
  	change_column :vacancies, :confirmed, :boolean, :default => true
  end
end
