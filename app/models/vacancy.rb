class Vacancy < ActiveRecord::Base
   attr_accessible :title, :description, :junior, :hot, :city, :email, :company,
    :web, :phone, :person, :distance, :office, :salary, :confirmed, :details

   before_save {|vacancy| vacancy.person = person.capitalize }

   validates :title, presence: true
   validates :description, presence: true
   validates :city, presence: true
   VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
   validates :email, presence: true, format: {with: VALID_EMAIL_REGEX }
   validates :company, presence: true
   VALID_PHONE_REGEX = /(420)\s?\d{3}\s?\d{3}\s?\d{3}/
   validates :phone, presence: true, format: {with: VALID_PHONE_REGEX }
   validates :person, presence: true

   default_scope order: 'vacancies.created_at DESC'

   #scope :praha, -> { where(city: "Prague") }

   self.per_page = 10

end
