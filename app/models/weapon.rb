class Weapon < ApplicationRecord
  belongs_to :armory
  belongs_to :party
  belongs_to :pnj, optional: true

  # ADD REFERENCE KEY TO WEAPON ON PNJ MODEL
  # has_many :pnjs
end
