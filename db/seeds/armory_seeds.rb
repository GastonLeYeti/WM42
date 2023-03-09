p "#############################################"
p "#############################################"
p "ARMORY SEEDS"
p "#############################################"
p "#############################################"

p "Destroying all armories ..."
Armory.destroy_all

p "Creating armories..."
# Lame
# Pistolet
# Fusil à pompe
# Grenade
# Arme à projectile
# Lance-flamme
# Fusil d'assaut
# Sniper
# Arme à énergie

armory1 = Armory.new(
  :type                => "Lame",
  :weapon_range        => "cac",
  :universe_id         => universeId,
)
armory1.save!
p "armory Lame created!"

armory2 = Armory.new(
  :type                => "Pistolet",
  :weapon_range        => "mid",
  :universe_id         => universeId,
)
armory2.save!
p "armory Pistolet created!"

armory3 = Armory.new(
  :type                => "Fusil à pompe",
  :weapon_range        => "mid",
  :universe_id         => universeId,
)
armory3.save!
p "armory Fusil à pompe created!"

armory4 = Armory.new(
  :type                => "Grenade",
  :weapon_range        => "mid",
  :universe_id         => universeId,
)
armory4.save!
p "armory Grenade created!"

armory5 = Armory.new(
  :type                => "Arme à projectile",
  :weapon_range        => "long",
  :universe_id         => universeId,
)
armory5.save!
p "armory Arme à projectile created!"

armory6 = Armory.new(
  :type                => "Lance-flamme",
  :weapon_range        => "cac",
  :universe_id         => universeId,
)
armory6.save!
p "armory Lance-flamme created!"

armory7 = Armory.new(
  :type                => "Fusil d'assaut",
  :weapon_range        => "mid",
  :universe_id         => universeId,
)
armory7.save!
p "armory Fusil d'assaut created!"

armory8 = Armory.new(
  :type                => "Sniper",
  :weapon_range        => "long",
  :universe_id         => universeId,
)
armory8.save!
p "armory Sniper created!"

armory9 = Armory.new(
  :type                => "Arme à énergie",
  :weapon_range        => "long",
  :universe_id         => universeId,
)
armory9.save!
p "armory Arme à énergie created!"
