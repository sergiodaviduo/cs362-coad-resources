FactoryBot.define do
  factory :user do
    role { "admin" }
    email { "new@blah.com" }
    password { "password" }
    id { 4 }
  end
end
