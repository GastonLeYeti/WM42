class Universe < ApplicationRecord
  has_many :creatures, dependent: :destroy
  has_many :parties, dependent: :destroy
  has_many :armories, dependent: :destroy
  has_many :jobs, dependent: :destroy
  has_many :races, dependent: :destroy
  validates :name, presence: true, uniqueness: true
end
