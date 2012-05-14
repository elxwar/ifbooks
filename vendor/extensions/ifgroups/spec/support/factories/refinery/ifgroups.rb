
FactoryGirl.define do
  factory :ifgroup, :class => Refinery::Ifgroups::Ifgroup do
    sequence(:title) { |n| "refinery#{n}" }
  end
end

