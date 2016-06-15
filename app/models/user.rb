class User < ActiveRecord::Base
  has_many :purchases
  has_many :alive_purchases, -> { alive }, class_name: "Purchase"
  has_many :alive_products, source: :product, through: :alive_purchases

  validates :email, presence: true
  validates :email, uniqueness: true
end
