class SeasonSerializer < ActiveModel::Serializer
  has_many :episodes

  attributes :id, :title, :plot
end
