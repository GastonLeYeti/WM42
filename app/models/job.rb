class Job < ApplicationRecord
  belongs_to :universe
  has_many :pnjs, dependent: :destroy
  validates :name, presence: true

end
