class Pnj < ApplicationRecord
  belongs_to :job
  belongs_to :race
  belongs_to :architecture
end
