FactoryGirl.define do
  factory :episode do
    title "The Title.."
    plot nil
    sequence(:number) { |n| n }
    season
  end
end
