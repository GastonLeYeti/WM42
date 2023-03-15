class Weapon < ApplicationRecord
  belongs_to :armory, optional: true
  belongs_to :party
  belongs_to :pnj, optional: true

  validates :name, presence: true
  validates :level, presence: true
  validates :rarity, presence: true
  validates :price, presence: true
  validates :lootable, inclusion: { in: [true, false] }


  def self.generate_weapons(party, nmb)

    universe_armories = Armory.where(universe_id: Universe.find_by(name: "Meta").id)

    nmb_mix = nmb / 2

    (1..nmb_mix).each do |armory|
      Weapon.create!(
      name: Faker::Games::DnD.ranged_weapon,
      level: rand(1..10),
      rarity: %w(Commun Rare Épique Légendaire).sample,
      price: rand(1..100),
      lootable: %w(true false).sample,
      description: Faker::Games::WarhammerFantasy.quote,
      party_id: party.id,
      armory_id: universe_armories.sample.id
      )
      p "weapon created"
    end

    (1..nmb_mix).each do |armory|
      Weapon.create!(
      name: Faker::Games::DnD.melee_weapon,
      level: rand(1..10),
      rarity: %w(Commun Rare Épique Légendaire).sample,
      price: rand(1..100),
      lootable: %w(true false).sample,
      description: Faker::Games::WarhammerFantasy.quote,
      party_id: party.id,
      armory_id: universe_armories.sample.id
      )
      p "weapon created"
    end
  end

end
