class Job < ApplicationRecord
  belongs_to :universe
  has_and_belongs_to_many :weapons, through: :weapjobs
  has_many :pnjs
end
