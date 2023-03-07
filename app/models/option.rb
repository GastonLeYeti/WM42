class Option < ApplicationRecord
  belongs_to :party, through: :funs
end
