FactoryGirl.define do
	factory :person do
		sequence(:person) { |i| "Mete#{i}" }
		association :list
	end	
end