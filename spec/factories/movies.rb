FactoryGirl.define do
  factory :movie do
    sequence(:title) { |n| "Sample title #{n}" }
    plot nil
  end
end
