class Pnj < ApplicationRecord
  belongs_to :job, optional: true

  belongs_to :race, dependent: :destroy, optional: true

  belongs_to :architecture, optional: true
  belongs_to :party
  has_one :weapon, optional: true
  validates :name, presence: true
  validates :lvl, presence: true
  validates :status, presence: true

  def self.generate_pnjs(party, nomb)

    universe_pnjs = PNJ.where(universe_id: Universe.find_by(name: "Meta").id)

    (1..nomb).each do |pnj|
      PNJ.create!(
      name: Faker::Games::DnD.name,
      lvl: rand(1..10),
      description: Faker::Games::WarhammerFantasy.quote,
      party_id: party.id,
      )
      p "pnj created"
    end
  end

end
