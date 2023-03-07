p "#############################################"
p "#############################################"
p "RACE SEEDS"
p "#############################################"
p "#############################################"

# kill all existing data
p "Destroying all races ..."
Race.destroy_all

p "Creating race..."

###############
p "General Race loading..."
###############

race1 = Race.new(
  :name                => "Humain",
  :culture             => "La vie",
  :divinity            => "La roue de la vie",
  :category            => "Ally",
  :universe_id         => metaId,
)
race1.save!
p "race Humain Ally created!"

race2 = Race.new(
  :name                => "Humain",
  :culture             => "La vie",
  :divinity            => "La roue de feu",
  :category            => "Enemy",
  :universe_id         => metaId,
)
race2.save!
p "race Humain Enemy created!"

###############
p "Fantasy Race loading..."
###############

race3 = Race.new(
  :name                => "Elfes",
  :culture             => "De sang",
  :divinity            => "La roue de sang",
  :category            => "Enemy",
  :universe_id         => fantasyId,
)
race3.save!
p "race Elfes Enemy created!"

race4 = Race.new(
  :name                => "Elfes",
  :culture             => "De la nuit",
  :divinity            => "La roue de la nuit",
  :category            => "Ally",
  :universe_id         => fantasyId,
)
race4.save!
p "race Elfes Ally created!"

race4 = Race.new(
  :name                => "Nains",
  :culture             => "De la montagne",
  :divinity            => "La montagne",
  :category            => "Ally",
  :universe_id         => fantasyId,
)
race4.save!
p "race Nains Ally created!"

race5 = Race.new(
  :name                => "Orcs",
  :culture             => "De la nuit",
  :divinity            => "La déesse de la nuit",
  :category            => "Enemy",
  :universe_id         => fantasyId,
)
race5.save!
p "race Orcs Enemy created!"

###############
p "Sci-fi Race loading..."
###############
# Cyborgs - une race de créatures mi-humaines mi-machines, souvent associée à la technologie avancée.
# Aliens - une race extraterrestre, avec une grande variété de formes, de tailles et de caractéristiques physiques.
# Zergs

race6 = Race.new(
  :name                => "Cyborgs",
  :culture             => "Gtd563kdkk",
  :divinity            => "Bit-No_Name",
  :category            => "Ally",
  :universe_id         => scienceFictionId,
)
race6.save!
p "race Cyborgs Ally created!"

race7 = Race.new(
  :name                => "Aliens",
  :culture             => "*****",
  :divinity            => "Maliköu",
  :category            => "Enemy",
  :universe_id         => scienceFictionId,
)
race7.save!
p "race Aliens Enemy created!"

race8 = Race.new(
  :name                => "Aliens",
  :culture             => "*****",
  :divinity            => "Galastar",
  :category            => "Ally",
  :universe_id         => scienceFictionId,
)
race8.save!
p "race Aliens Ally created!"

race9 = Race.new(
  :name                => "Zergs",
  :culture             => "*****",
  :divinity            => "Zerg",
  :category            => "Enemy",
  :universe_id         => scienceFictionId,
)
race9.save!
p "race Zergs Enemy created!"

###############
p "Historical Race loading..."
###############
# Vikings
# Aztèques
# Vampires
# Loups-garous

race10 = Race.new(
  :name                => "Vikings",
  :culture             => "Vinland",
  :divinity            => "Odin",
  :category            => "Ally",
  :universe_id         => historicalId,
)
race10.save!
p "race Vikings Ally created!"

race11 = Race.new(
  :name                => "Aztèques",
  :culture             => "Aztlán",
  :divinity            => "Huitzilopochtli",
  :category            => "Enemy",
  :universe_id         => historicalId,
)
race11.save!
p "race Aztèques Enemy created!"

race12 = Race.new(
  :name                => "Vampires",
  :culture             => "Vampirism",
  :divinity            => "Vampirism",
  :category            => "Enemy",
  :universe_id         => historicalId,
)
race12.save!
p "race Vampires Enemy created!"

race13 = Race.new(
  :name                => "Loups-garous",
  :culture             => "Loup-garou",
  :divinity            => "Loup-garou",
  :category            => "Enemy",
  :universe_id         => historicalId,
)
race13.save!
p "race Loups-garous Enemy created!"

###############
p "Post-apocalyptic Race loading..."
###############
# Humains mutants
# Mutants animaux
# Goules
# Clones défectueux
# Survivants génétiquement modifiés

race14 = Race.new(
  :name                => "Humains mutants",
  :culture             => "Mutant",
  :divinity            => "Mutant",
  :category            => "Enemy",
  :universe_id         => postApocalypticId,
)
race14.save!
p "race Humains mutants Enemy created!"

race15 = Race.new(
  :name                => "Goules",
  :culture             => "Likon",
  :divinity            => "Louisation",
  :category            => "Enemy",
  :universe_id         => postApocalypticId,
)
race15.save!
p "race Goules Enemy created!"

race16 = Race.new(
  :name                => "Clones défectueux",
  :culture             => "Clonage",
  :divinity            => "Human",
  :category            => "Ally",
  :universe_id         => postApocalypticId,
)
race16.save!
p "race Clones défectueux Ally created!"

race16 = Race.new(
  :name                => "Survivants génétiquement modifiés",
  :culture             => "Génétique",
  :divinity            => "Human",
  :category            => "Enemy",
  :universe_id         => postApocalypticId,
)
race16.save!
p "race Survivants génétiquement modifiés Enemy created!"

###############
p "Modern Race loading..."
###############

race17 = Race.new(
  :name                => "Humain",
  :culture             => "Manifestant",
  :divinity            => "CGT",
  :category            => "Enemy",
  :universe_id         => modernId,
)
race17.save!
p "race Humain Ally created!"

race18 = Race.new(
  :name                => "Humain",
  :culture             => "Politicien",
  :divinity            => "Corompus",
  :category            => "Enemy",
  :universe_id         => modernId,
)
race18.save!
p "race Humain Enemy created!"

race19 = Race.new(
  :name                => "Humain",
  :culture             => "normal",
  :divinity            => "Humain",
  :category            => "Ally",
  :universe_id         => modernId,
)
race19.save!
p "race Humain Enemy created!"
