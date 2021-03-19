FactoryBot.define do
  factory :comment do
    text {"good!!"}
    association :user
    association :prototype
  end
end