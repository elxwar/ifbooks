
FactoryGirl.define do
  factory :book, :class => Refinery::Books::Book do
    sequence(:title) { |n| "refinery#{n}" }
  end
end

