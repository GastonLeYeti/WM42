class Weapon < ApplicationRecord
  belongs_to :armory
  belongs_to :party
  has_and_belongs_to_many :jobs, through: :weapjobs
end
