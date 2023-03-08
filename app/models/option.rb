class Option < ApplicationRecord
  has_many :funs
  has_many :parties, through: :funs
  validates :name, presence: true
  validates :used, inclusion: { in: [true, false] }
end
