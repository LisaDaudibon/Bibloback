FactoryBot.define do
  factory :book do
    title { "Hello Kitty" }
    author { "martin" }
    description { "Hello Kitty a mangé un lapin" }
    pages { 222 }
    published_date { "05/10/2022" }
    category { "Lapin crétin" }
  end
end