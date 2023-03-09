p "#############################################"
p "#############################################"
p "PNJ SEEDS"
p "#############################################"
p "#############################################"

# kill all existing data
p "Destroying all pnjs ..."
PNJ.destroy_all

p "Creating pnj..."

###############
p "General Pnj loading..."
###############

pnj1 = Pnj.new(
  :name                => "Mara",
  :lvl             => "2",
  :job_id            => jobId,
  :status            => "Allier",
  :race_id         => raceId,
  :architecture_id => architectureId,
  :party_id => partyId,
  :weapon_id => weaponId,
  :description => "Mara est une survivante robuste et astucieuse qui a réussi à rester en vie dans le désert post-apocalyptique en cherchant des fournitures et en évitant les gangs dangereux. Elle est toujours à la recherche d'une bonne affaire et possède un œil aiguisé pour repérer les articles de valeur.",
)
pnj1.save!
p "pnj Mara created!"

pnj2 = Pnj.new(
  :name                => "Zephyr",
  :lvl             => "5",
  :job_id            => jobId,
  :status            => "Ennemi",
  :race_id         => raceId,
  :architecture_id => architectureId,
  :party_id => partyId,
  :weapon_id => weaponId,
  :description => "",
)
pnj2.save!
p "pnj Zephyr created!"

pnj3 = Pnj.new(
  :name                => "Anna",
  :lvl             => "3",
  :job_id            => jobId,
  :status            => "Allier",
  :race_id         => raceId,
  :architecture_id => architectureId,
  :party_id => partyId,
  :weapon_id => weaponId,
  :description => "Anna est une médecin aimable et attentionnée qui voyage dans le désert en offrant ses services à quiconque en a besoin. Elle est compétente pour traiter les blessures et les maladies et possède un talent naturel pour calmer les patients. Elle est toujours à la recherche de nouveaux fournitures médicales à ajouter à son kit.",
)
pnj3.save!
p "pnj Anna created!"

pnj4 = Pnj.new(
  :name                => "Viper",
  :lvl             => "10",
  :job_id            => jobId,
  :status            => "Ennemi",
  :race_id         => raceId,
  :architecture_id => architectureId,
  :party_id => partyId,
  :weapon_id => weaponId,
  :description => "Viper est le cruel chef d'une bande de pillards qui terrorisent le désert. Il est un maître stratège et utilise la force de sa bande en nombre pour vaincre ses ennemis. Il est connu pour sa brutalité et a la réputation de ne laisser aucun survivant.",
)
pnj4.save!
p "pnj Viper created!"

pnj5 = Pnj.new(
  :name                => "Ash",
  :lvl             => "7",
  :job_id            => jobId,
  :status            => "Allier",
  :race_id         => raceId,
  :architecture_id => architectureId,
  :party_id => partyId,
  :weapon_id => weaponId,
  :description => "Ash est un mécanicien qualifié qui voyage dans le désert à bord d'un véhicule suréquipé qu'il a construit lui-même. Il est toujours à la recherche de nouvelles pièces et d'améliorations pour rendre son véhicule encore plus rapide et plus puissant. Il est également habile avec toutes sortes de réparations mécaniques et peut réparer à peu près n'importe quoi.",
)
pnj5.save!
p "pnj Ash created!"

pnj6 = Pnj.new(
  :name                => "Fang",
  :lvl             => "9",
  :job_id            => jobId,
  :status            => "Allier",
  :race_id         => raceId,
  :architecture_id => architectureId,
  :party_id => partyId,
  :weapon_id => weaponId,
  :description => "Fang est un hybride mi-humain, mi-bête qui utilise ses sens aiguisés et ses compétences de pistage pour chasser de la nourriture dans le désert. Il est solitaire par nature et préfère travailler seul, mais il n'est pas opposé à travailler avec d'autres si cela signifie obtenir un bon repas. Malgré son apparence redoutable, il est en réalité assez sympathique et apprécie la compagnie d'autres survivants.",
)
pnj6.save!
p "pnj Fans created!"

pnj7 = Pnj.new(
  :name                => "Marcus",
  :lvl             => "1",
  :job_id            => jobId,
  :status            => "Allier",
  :race_id         => raceId,
  :architecture_id => architectureId,
  :party_id => partyId,
  :weapon_id => weaponId,
  :description => "Marcus est un scavanger expérimenté qui sait comment naviguer dans le dangereux désert pour trouver des ressources précieuses. Il n'est pas particulièrement amical, mais il n'est pas non plus un ennemi - il essaie simplement de survivre.",
)
pnj7.save!
p "pnj Marcus created!"

pnj8 = Pnj.new(
  :name                => "Scorn",
  :lvl             => "4",
  :job_id            => jobId,
  :status            => "Ennemi",
  :race_id         => raceId,
  :architecture_id => architectureId,
  :party_id => partyId,
  :weapon_id => weaponId,
  :description => "Scorn est un impitoyable seigneur de guerre qui règne sur une grande bande de pillards et de mercenaires. Il est un cyborg doté d'une force et d'une résistance accrues, et il utilise son pouvoir pour intimider et contrôler les autres. Il est craint par beaucoup dans le désert.",
)
pnj8.save!
p "pnj Scorn created!"

pnj9 = Pnj.new(
  :name                => "Atlas",
  :lvl             => "6",
  :job_id            => jobId,
  :status            => "Allier",
  :race_id         => raceId,
  :architecture_id => architectureId,
  :party_id => partyId,
  :weapon_id => weaponId,
  :description => "Atlas est un voyageur chevronné qui a parcouru la terre dévastée pendant des années. Il a tout vu et possède une grande connaissance des dangers et des opportunités du désert. Il est toujours prêt à partager ses connaissances avec les autres, mais il est également prudent et ne hésitera pas à se défendre si nécessaire.",
)
pnj9.save!
p "pnj Atlas created!"

pnj10 = Pnj.new(
  :name                => "Raven",
  :lvl             => "8",
  :job_id            => jobId,
  :status            => "Ennemi",
  :race_id         => raceId,
  :architecture_id => architectureId,
  :party_id => partyId,
  :weapon_id => weaponId,
  :description => "Raven est une assassin mortelle qui travaille pour le plus offrant. Elle est connue pour son approche furtive et sa capacité à abattre des cibles avec une précision mortelle. Elle a une attitude sans compromis et n'hésite pas à éliminer quiconque se met en travers de son chemin.",
)
pnj10.save!
p "pnj Raven created!"
