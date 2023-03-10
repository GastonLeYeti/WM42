class Player < ApplicationRecord
  belongs_to :party
  has_one_attached :avatar, dependent: :destroy
  validates :username, presence: true
end
