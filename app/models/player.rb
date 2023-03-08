class Player < ApplicationRecord
  belongs_to :party
  validates :name, presence: true
end
