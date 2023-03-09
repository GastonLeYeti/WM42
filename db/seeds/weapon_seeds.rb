p "#############################################"
p "#############################################"
p "WEAPON SEEDS"
p "#############################################"
p "#############################################"

# kill all existing data
p "Destroying all weapons ..."
Weapon.destroy_all

p "Creating weapon..."

###############
p "Post-apocalyptic Weapon loading..."
###############
# Arc de Scavenger
# Fusil de Chasse des Terres Désolées
# Lame Rouillée
# Sac à dos - Lance-Flammes
# Bombe à Clous
# Arbalète du Survivant
# Pied-de-Biche des Terres Désolées
# Revolver de Chef de Gang
# Épée-Machette
# Lance-grenades Improvisé

weapon1 = Weapon.new(
  :name                => "Arc de Scavenger",
  :level               => 3,
  :rarity              => "Peu commun",
  :price               => 65,
  :armory_id           => armoryId,
  :lootable            => true,
  :party_id            => partyId,
  :description         => "Un arc de fortune fabriqué à partir de matériaux de récupération tels que des tuyaux en métal, des pièces de vélo et du ruban adhésif. Plus dangereux qu'il n'y paraît",
)
weapon1.save!
p "weapon: Arc de Scavenger created!"

weapon2 = Weapon.new(
  :name                => "Fusil de Chasse des Terres Désolées",
  :level               => 5,
  :rarity              => "Rare",
  :price               => 75,
  :armory_id           => armoryId,
  :lootable            => true,
  :party_id            => partyId,
  :description         => "Un fusil de chasse classique au design robuste qui peut résister aux conditions difficiles des terres désolées.",
)
weapon2.save!
p "weapon: Fusil de Chasse des Terres Désolées created!"

weapon3 = Weapon.new(
  :name                => "Lame Rouillée",
  :level               => 2,
  :rarity              => "Commun",
  :price               => 15,
  :armory_id           => armoryId,
  :lootable            => true,
  :party_id            => partyId,
  :description         => "Une machette usée qui a visiblement vu de nombreuses batailles. Sa lame rouillée ajoute un élément de danger, car toute blessure qu'elle inflige pourrait s'infecter.",
)
weapon3.save!
p "weapon: Lame Rouillée created!"

weapon4 = Weapon.new(
  :name                => "Sac à Dos - Lance-Flammes",
  :level               => 8,
  :rarity              => "Épique",
  :price               => 240,
  :armory_id           => armoryId,
  :lootable            => false,
  :party_id            => partyId,
  :description         => "Un sac à dos volumineux avec un réservoir de carburant et une buse qui émet des flammes. C'est une arme rare et très recherchée qui peut facilement décimer des groupes d'ennemis et cuire des steaks de coyote en un rien de temps. Utilisation optimale à courte distance.",
)
weapon4.save!
p "weapon: Sac à Dos - Lance-Flammes created!"

weapon5 = Weapon.new(
  :name                => "Bombe à Clous",
  :level               => 5,
  :rarity              => "Peu commun",
  :price               => 75,
  :armory_id           => armoryId,
  :lootable            => true,
  :party_id            => partyId,
  :description         => "Un dispositif explosif fabriqué à partir d'un conteneur en métal rempli de clous et d'autres objets tranchants. Il est souvent utilisé comme piège ou jeté en dernier recours.",
)
weapon5.save!
p "weapon: Bombe à Clous created!"

weapon6 = Weapon.new(
  :name                => "Arbalète du Survivant",
  :level               => 5,
  :rarity              => "Rare",
  :price               => 120,
  :armory_id           => armoryId,
  :lootable            => true,
  :party_id            => partyId,
  :description         => "Une arbalète de chasse simple à entretenir et mortelle à courte ou moyenne distance. Les carreaux ne sont pas faciles à trouver, il vaut mieux s'assurer de les récupérer autant que possible après un tir.",
)
weapon6.save!
p "weapon: Arbalète du Survivant created!"

weapon7 = Weapon.new(
  :name                => "Pied-de-Biche des Terres Désolées",
  :level               => 3,
  :rarity              => "Commun",
  :price               => 60,
  :armory_id           => armoryId,
  :lootable            => true,
  :party_id            => partyId,
  :description         => "Une arme de mêlée polyvalente qui peut être utilisée à la fois pour le combat et la récupération. Son poids et sa force brute la rendent efficace contre les zombies, mutants et androïdes.",
)
weapon7.save!
p "weapon: Pied-de-Biche des Terres Désolées created!"

weapon8 = Weapon.new(
  :name                => "Revolver de Chef de Gang",
  :level               => 7,
  :rarity              => "Légendaire",
  :price               => 180,
  :armory_id           => armoryId,
  :lootable            => true,
  :party_id            => partyId,
  :description         => "Un revolver robuste facile à entretenir et à réparer, très prisé des pillards pour sa fiabilité. Cette version moddée est équipée d'un stabilisateur et d'un pointeur laser.",
)
weapon8.save!
p "weapon: Revolver de Chef de Gang created!"

weapon9 = Weapon.new(
  :name                => "Épée-Machette",
  :level               => 9,
  :rarity              => "Rare",
  :price               => 185,
  :armory_id           => armoryId,
  :lootable            => false,
  :party_id            => partyId,
  :description         => "Une arme hybride qui combine les meilleurs aspects d'une machette et d'une épée. Elle est souvent fabriquée à partir de pièces de récupération et affûtée à l'aide de méthodes primitives. Oubliez son aspect bricolé, vous rigolerez moins quand quand elle sifflera près de vos oreilles!",
)
weapon9.save!
p "weapon: Épée-Machette created!"

weapon10 = Weapon.new(
  :name                => "Lance-grenades Improvisé",
  :level               => 6,
  :rarity              => "Rare",
  :price               => 75,
  :armory_id           => armoryId,
  :lootable            => true,
  :party_id            => partyId,
  :description         => "Un dispositif de type lance-pierre qui lance des grenades artisanales sur une courte distance. Il est souvent utilisé pour des tactiques de guérilla et des attaques surprises.",
)
weapon10.save!
p "weapon: Lance-grenades Improvisé created!"
