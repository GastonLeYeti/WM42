class Weapon < ApplicationRecord
  belongs_to :armory
  belongs_to :party
end
