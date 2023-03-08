class Job < ApplicationRecord
  belongs_to :universe
  has_many :pnjs
end
