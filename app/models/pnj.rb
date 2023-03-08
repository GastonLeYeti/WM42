class Pnj < ApplicationRecord
  belongs_to :job
  belongs_to :race
  belongs_to :architecture
  belongs_to :party
  has_one :weapon, optional: true
  validates :name, presence: true
  validates :lvl, presence: true
  validates :status, presence: true

end
