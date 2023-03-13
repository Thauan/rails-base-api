FactoryBot.define do
    factory :user do
      sequence(:name) { |n| "User #{n}" }
      email { "#{name.parameterize}@example.net" }
      password "password"
      password_confirmation "password"
      is_active true
    end
end
  