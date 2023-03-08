class Weapon < ApplicationRecord
  belongs_to :armory
  belongs_to :party
  belongs_to :pnj, optional: true

  validates :name, presence: true
  validates :level, presence: true
  validates :rarity, presence: true
  validates :price, presence: true
  validates :lootable, inclusion: { in: [true, false] }
end
