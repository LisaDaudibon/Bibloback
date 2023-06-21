FactoryBot.define do
  factory :user do
    email { "example@example.fr" }
    pseudo { "example" }
    password { "string" }
    password_confirmation { "string" }
    admin { true }
  end
end
