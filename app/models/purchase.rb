class Purchase < ActiveRecord::Base
  PRICE = 2.99

  belongs_to :user
  belongs_to :product
  enum quality: [:hd, :sd]

  validates_presence_of :price, :quality
  validates_associated :user, :product
  validates_uniqueness_of :product_id, conditions: -> { where(active: true) }

  scope :alive, -> { where active: true }

end
