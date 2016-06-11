FactoryGirl.define do
  factory :season do
    sequence(:title) { |n| "Sample title #{n}" }
    plot nil

    trait :with_episodes do
      after(:create) do |season|
        3.times { create(:episode, season: season) }
      end
    end

    factory :season_with_episodes, traits: [:with_episodes]
  end
end
