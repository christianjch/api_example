class Product < ActiveRecord::Base
  has_many :purchases

  validates :title, presence: true
end
