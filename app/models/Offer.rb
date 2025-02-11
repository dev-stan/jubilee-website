class Offer <  ApplicationRecord
  has_many :reservations, dependent: :destroy
end