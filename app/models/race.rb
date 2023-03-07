class Race < ApplicationRecord
  belongs_to :universe
  belongs_to :race, through: :party_races
  has_many :pnjs
end
