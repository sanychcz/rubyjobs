class Vacancy < ActiveRecord::Base
   attr_accessible :title, :description, :junior, :hot, :city, :email, :company, :web, :phone, :person

   validates :title, presence: true
   validates :description, presence: true
   validates :city, presence: true
   validates :email, presence: true
   validates :company, presence: true
   validates :phone, presence: true
   validates :person, presence: true
end
