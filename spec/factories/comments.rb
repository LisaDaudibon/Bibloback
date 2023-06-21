FactoryBot.define do
  factory :comment do
    comments { "Hello Kitty" }
    association :user
    association :book
  end
end