class Race < ApplicationRecord
  belongs_to :universe
  has_many :pnjs
  belongs_to :party, through: :pnjs
  validates :name, presence: true
  validates :culture, presence: true
  validates :divinity, presence: true
  validates :category, presence: true
end
