FactoryGirl.define do
	factory :bill do
		price 120 
		due_date 2016-03-05
		association :list
	end	
end