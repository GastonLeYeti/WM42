class Creature < ApplicationRecord
  belongs_to :universe
  validates :name, presence: true
  validates :description, presence: true
end
