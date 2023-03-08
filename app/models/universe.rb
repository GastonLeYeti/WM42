class Universe < ApplicationRecord
  has_many :creatures
  has_many :parties
  has_many :armories
  has_many :jobs
  has_many :races
  validates :name, presence: true, uniqueness: true
end
