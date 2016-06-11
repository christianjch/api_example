class Purchase < ActiveRecord::Base
  PRICE = 2.99

  belongs_to :user
  belongs_to :product
  enum quality: [:hd, :sd]

  validates_presence_of :price, :quality, :active
  validates_associated :user, :product

  scope :alive, -> { where active: true }
end
