class Season < Product
  has_many :episodes, dependent: :destroy
end
