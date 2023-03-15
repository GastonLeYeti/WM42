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

    universe_pnjs = PNJ.where(universe_id: Universe.find_by(name: "Meta").id)

    (1..nomb).each do |pnj|
      PNJ.create!(
      name: Faker::Games::DnD.name,
      lvl: rand(1..10),
      race_id: universe_pnjs.sample.id,
      description: Faker::Games::WarhammerFantasy.quote,
      job_id: universe_pnjs.sample.id,
      party_id: party.id,
      weapon_id: universe_pnjs.sample.id
      )
      p "pnj created"
    end
  end
end
