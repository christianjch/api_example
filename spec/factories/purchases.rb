FactoryGirl.define do
  factory :purchase do
    price 2.99
    quality :hd
    active true
    product
    user
  end
end
