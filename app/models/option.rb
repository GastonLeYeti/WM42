class Option < ApplicationRecord
  has_many :funs
  has_many :parties, through: :funs
end
