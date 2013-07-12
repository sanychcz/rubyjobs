class CreateVacancies < ActiveRecord::Migration
  def change
    create_table :vacancies do |t|
    	t.string :title
    	t.string :city
    	t.text :description
    	t.boolean :hot
    	t.boolean :junior
    	t.boolean :confirmed
    	t.string :email
    	t.string :company
    	t.string :web
    	t.string :phone
    	t.string :person
      t.timestamps
    end
  end
end
