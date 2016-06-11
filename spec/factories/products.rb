FactoryGirl.define do
  factory :product do
    sequence(:title) { |n| "Sample title #{n}" }
    plot nil
  end
end
