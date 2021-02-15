FactoryBot.define do
  factory :user do
    role { "organization" }
    email { "test@test.com" }
    password { "password" }
  end
end
