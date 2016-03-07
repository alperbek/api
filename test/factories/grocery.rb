FactoryGirl.define do
	factory :grocery do
		sequence(:item) { |i| "Butter#{i}" }
		quantity 2
		association :list 
	end	
end