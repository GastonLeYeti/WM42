class Party < ApplicationRecord
  belongs_to :user
  belongs_to :universe
end
