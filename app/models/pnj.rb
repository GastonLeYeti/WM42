class Pnj < ApplicationRecord
  belongs_to :job
  belongs_to :race, dependent: :destroy
  belongs_to :architecture
  belongs_to :party
  has_one :weapon

  validates :name, presence: true
  validates :lvl, presence: true
  validates :status, presence: true

  def self.generate_pnjs(party, nomb)
    (1..nomb).each do |pnj|
      Pnj.create!(
      name: Faker::Games::DnD.name,
      lvl: rand(1..10),
      description: Faker::Games::WarhammerFantasy.quote,
      party_id: party.id,
      )
      p "pnj created"
    end
  end
end
