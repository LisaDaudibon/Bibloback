FactoryBot.define do
  factory :reading_goal do
    pages { 223 }
    complete { true }
    rating { 9 }
    start_date { DateTime.now }
    end_date { Date.new(2023,7,3) }
    association :user
  end
end