class Armory < ApplicationRecord
  belongs_to :universe
  has_many :weapons
end
