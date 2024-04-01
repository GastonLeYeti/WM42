class Pnj < ApplicationRecord
  belongs_to :job, optional: true
  belongs_to :race, dependent: :destroy, optional: true
  belongs_to :architecture, optional: true
  belongs_to :party
  has_one :weapon


  validates :name, presence: true
  validates :lvl, presence: true
  validates :status, presence: true

  def self.generate_pnjs(party, nomb)

    (1..nomb).each do |pnj|
      Pnj.create!(
        name: Faker::Games::Heroes.name,
        lvl: rand(1..10),
        status: %w(Allier Ennemi).sample,
        description: Faker::Games::WorldOfWarcraft.quote,
        job_id: Job.all.sample.id,
        race_id: Race.all.sample.id,
        architecture_id: Architecture.all.sample.id,
        party_id: party.id
      )
      p "pnj created"
    end
  end
end
