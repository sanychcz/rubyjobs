FactoryGirl.define do
	factory :user do |f|
		f.email "user@email.com"
		f.password "foooobar"
		f.password_confirmation "foooobar"
	end
end