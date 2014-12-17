FactoryGirl.define do
  factory :user do
    first_name "Jane"
    last_name "Doe"
    email "Jane@example.com"
    social_security_number 987654321
  end
end