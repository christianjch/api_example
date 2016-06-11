class Episode < ActiveRecord::Base
  belongs_to :season

  validates :title, presence: true
  validates :number, uniqueness: true
  validates_associated :season
end
