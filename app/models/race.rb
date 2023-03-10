class Race < ApplicationRecord
  belongs_to :universe
  has_many :pnjs, dependent: :destroy
  has_many :parties, through: :pnjs, dependent: :destroy
  validates :name, presence: true
  validates :culture, presence: true
  validates :divinity, presence: true
  validates :category, presence: true
end
