FactoryGirl.define do
	factory :list do
		sequence(:title) { |i| "Breakfast#{i}" }
		mode 0
		
		factory :grocery_list do
			mode 0
			association :grocery
		end

		factory :person_list do
			mode 1
			association :person
		end

		factory :bill_list do
			mode 2
			association :bill
		end

	end
end