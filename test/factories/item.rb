FactoryGirl.define do
	factory :item do
		sequence(:item) { |i| "Butter#{i}" }
		association :list 
	end	
end