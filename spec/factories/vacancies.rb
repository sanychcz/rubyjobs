FactoryGirl.define do
	factory :vacancy do |f|
		f.title "Rails developer"
		f.description "We are loking for very good rails developer"
		f.city "Prague"
		f.email "company@email.com"
		f.company "Best company"
		f.phone "420 111 222 333"
		f.person "Vladimir Putin"

		factory :confirmed do
			confirmed true
		end
	end
end


