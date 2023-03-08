class Pnj < ApplicationRecord
  belongs_to :job
  belongs_to :race
  belongs_to :architecture
  belongs_to :party

  # ADD REFERENCE KEY TO WEAPON ON PNJ MODEL
  # belongs_to :weapon
  # CREATE REF KEY IN PNJ
end
