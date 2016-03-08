FactoryGirl.define do
	factory :item do
		sequence(:item) { |i| "Butter#{i}" }
		quantity 2
		association :list 
	end	
end