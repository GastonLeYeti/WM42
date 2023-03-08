class Party < ApplicationRecord
  belongs_to :user
  belongs_to :universe
  has_many :players
  has_many :weapons
  has_many :maps
  has_many :funs
  has_many :options, through: :funs
  has_many :pnjs
end
