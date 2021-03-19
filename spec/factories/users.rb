FactoryBot.define do
  factory :user do
    name {"sample1"}
    email {"sample1@sample.com"}
    profile {"profile"}
    occupation {"occupation"}
    position {"position"}
    password {"password"}
    password_confirmation {"password"}
  end
end