class Architecture < ApplicationRecord
  belongs_to :city
  belongs_to :building
  has_many :pnjs
end
