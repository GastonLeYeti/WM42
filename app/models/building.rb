class Building < ApplicationRecord
  has_many :architectures
  has_many :pnj, through: :architectures
end
