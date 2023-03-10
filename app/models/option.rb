class Option < ApplicationRecord
  has_many :funs, dependent: :destroy
  has_many :parties, through: :funs, dependent: :destroy
  validates :name, presence: true
  validates :used, inclusion: { in: [true, false] }
end
