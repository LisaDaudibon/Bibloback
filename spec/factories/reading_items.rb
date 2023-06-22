FactoryBot.define do
  factory :reading_item do
    read { true }
    association :book
    association :reading_goal
    association :reading_list
  end
end