class Building < ApplicationRecord
  belongs_to :city, through: :architectures
end
