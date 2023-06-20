require 'date'

FactoryBot.define do
  factory :reading_goal do
    pages { 223 }
    complete { true }
    rating { 9 }
    start_date { 01/02/2022 }
    end_date { 11/06/2022 }
    association :user
  end
end