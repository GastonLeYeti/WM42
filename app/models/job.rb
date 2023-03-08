class Job < ApplicationRecord
  belongs_to :universe
  has_many :pnjs
  validates :name, presence: true
  
end
