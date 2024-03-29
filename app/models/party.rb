class Party < ApplicationRecord
  SIZE_OF_PARTIES = %w[Petite Moyenne Grande].freeze
  has_one :user
  belongs_to :universe
  has_many :players
  has_many :weapons, dependent: :destroy
  has_many :maps, dependent: :destroy
  has_many :cities, through: :maps
  has_many :funs, dependent: :destroy
  has_many :options, through: :funs, dependent: :destroy
  has_many :pnjs, dependent: :destroy
  # has_many :races, through: :pnjs, dependent: :destroy
  validates :name, presence: true
  # validates :bible, presence: true
end
