class Party < ApplicationRecord
  belongs_to :user
  belongs_to :universe
  has_many :bibles
  has_many :players
  has_many :weapons
  has_many :maps
  has_many :races, through: :party_races
  has_many :options, through: :funs
end
