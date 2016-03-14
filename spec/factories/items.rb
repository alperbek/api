FactoryGirl.define do
  factory :item do
    sequence(:item) { |i| "Item#{i}" }
    association :list
  end
end
