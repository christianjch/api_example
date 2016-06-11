FactoryGirl.define do
  factory :user do
    sequence(:email) { |n| "user_#{n}@email.com" }
  end
end
