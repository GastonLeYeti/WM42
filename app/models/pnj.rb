class Pnj < ApplicationRecord
  belongs_to :job
  has_many :races, dependent: :destroy
  belongs_to :architecture
  belongs_to :party
  has_one :weapon
  validates :name, presence: true
  validates :lvl, presence: true
  validates :status, presence: true

end
