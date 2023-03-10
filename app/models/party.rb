class Party < ApplicationRecord
  has_one :user
  belongs_to :universe
  has_many :players
  has_many :weapons
  has_many :maps
  has_many :funs
  has_many :options, through: :funs
  has_many :races, through: :pnjs
  has_many :pnjs
  validates :name, presence: true
  validates :bible, presence: true
end
