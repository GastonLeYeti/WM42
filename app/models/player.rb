class Player < ApplicationRecord
  belongs_to :party
  has_one_attached :avatar
  validates :name, presence: true
end
