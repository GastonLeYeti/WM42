p "#############################################"
p "#############################################"
p "CREATURE SEEDS"
p "#############################################"
p "#############################################"

p "Destroying all creatures ..."
Creature.destroy_all

p "Creating creatures..."

creature1 = Creature.new(
  :name                => "Sanglier",
  :lvl                 => 5,
  :universe_id         => metaId,
  :description         => "Le sanglier est un mammifère de la famille des porcins. Il est très intelligent et peut être très dangereux. Il est très apprécié pour sa viande et sa fourrure.",
)
creature1.save!
p "creature Sanglier created!"

creature2 = Creature.new(
  :name                => "Loup",
  :lvl                 => 5,
  :universe_id         => metaId,
  :description         => "Le loup est un mammifère de la famille des canidés. Il est très intelligent et peut être très dangereux. Il est très apprécié pour sa viande et sa fourrure.",
)
creature2.save!
p "creature Loup created!"

creature3 = Creature.new(
  :name                => "Cerf",
  :lvl                 => 2,
  :universe_id         => metaId,
  :description         => "Le cerf est un mammifère de la famille des cervidés. Il est très intelligent et peut être très dangereux. Il est très apprécié pour sa viande et sa fourrure.",
)
creature3.save!
p "creature Cerf created!"

creature4 = Creature.new(
  :name                => "Lion",
  :lvl                 => 10,
  :universe_id         => metaId,
  :description         => "Le lion est un mammifère de la famille des félins. Il est très intelligent et peut être très dangereux. Il est très apprécié pour sa viande et sa fourrure.",
)
creature4.save!
p "creature Lion created!"

creature5 = Creature.new(
  :name                => "Tigre",
  :lvl                 => 8,
  :universe_id         => metaId,
  :description         => "Le tigre est un mammifère de la famille des félins. Il est très intelligent et peut être très dangereux. Il est très apprécié pour sa viande et sa fourrure.",
)
creature5.save!
p "creature Tigre created!"

creature6 = Creature.new(
  :name                => "Gorille",
  :lvl                 => 10,
  :universe_id         => metaId,
  :description         => "Le gorille est un mammifère de la famille des primates. Il est très intelligent et peut être très dangereux.",
)
creature6.save!
p "creature Gorille created!"

creature7 = Creature.new(
  :name                => "Chauve-souris",
  :lvl                 => 1,
  :universe_id         => metaId,
  :description         => "La chauve-souris est un mammifère de la famille des chiroptères. Il est très intelligent et peut être très dangereux.",
)
creature7.save!
p "creature Chauve-souris created!"

creature8 = Creature.new(
  :name                => "Aigle",
  :lvl                 => 3,
  :universe_id         => metaId,
  :description         => "L'aigle est un oiseau de la famille des accipitridés. Il est très intelligent et peut être très dangereux.",
)
creature8.save!
p "creature Aigle created!"

creature9 = Creature.new(
  :name                => "Poule",
  :lvl                 => 1,
  :universe_id         => metaId,
  :description         => "La poule est un oiseau de la famille des gallinacés. Il est très intelligent. Il est très apprécié pour sa viande.",
)
creature9.save!
p "creature Poule created!"

creature10 = Creature.new(
  :name                => "Poulet",
  :lvl                 => 1,
  :universe_id         => metaId,
  :description         => "Le poulet est un oiseau de la famille des gallinacés. Il est très intelligent. Il est très apprécié pour sa viande.",
)
creature10.save!
p "creature Poulet created!"

creature11 = Creature.new(
  :name                => "Vache",
  :lvl                 => 2,
  :universe_id         => metaId,
  :description         => "La vache est un mammifère de la famille des bovidés. Il est très intelligent. Il est très apprécié pour sa viande et son cuir.",
)
creature11.save!
p "creature Vache created!"

creature12 = Creature.new(
  :name                => "Cheval",
  :lvl                 => 3,
  :universe_id         => metaId,
  :description         => "Le cheval est un mammifère de la famille des équidés. Il est très intelligent. Il est très apprécié pour sa viande et son cuir.",
)
creature12.save!
p "creature Cheval created!"

creature13 = Creature.new(
  :name                => "Chien",
  :lvl                 => 2,
  :universe_id         => metaId,
  :description         => "Le chien est un mammifère de la famille des canidés. Il est très intelligent et peut être dangereux.",
)
creature13.save!
p "creature Chien created!"

creature14 = Creature.new(
  :name                => "Chat",
  :lvl                 => 3,
  :universe_id         => metaId,
  :description         => "Le chat est un mammifère de la famille des félins. Il est très intelligent et peut être dangereux.",
)
creature14.save!
p "creature Chat created!"

creature15 = Creature.new(
  :name                => "Serpent",
  :lvl                 => 8,
  :universe_id         => metaId,
  :description         => "Le serpent est un reptile de la famille des serpents. Il est très intelligent et peut être dangereux. Il est très apprécié pour sa viande et sa peau.",
)
creature15.save!
p "creature Serpent created!"

creature16 = Creature.new(
  :name                => "Souris",
  :lvl                 => 1,
  :universe_id         => metaId,
  :description         => "La souris est un mammifère de la famille des rongeurs. Il n'est pas très intelligent.",
)
creature16.save!
p "creature Souris created!"

creature17 = Creature.new(
  :name                => "Lapin",
  :lvl                 => 1,
  :universe_id         => metaId,
  :description         => "Le lapin est un mammifère de la famille des lagomorphes. Il n'est pas très intelligent.",
)
creature17.save!
p "creature Lapin created!"

creature18 = Creature.new(
  :name                => "Hibou",
  :lvl                 => 5,
  :universe_id         => metaId,
  :description         => "L'hibou est un oiseau de la famille des strigiformes. Il est très intelligent et peut être très dangereux.",
)
creature18.save!
p "creature Hibou created!"


creature19 = Creature.new(
  :name                => "Chimère",
  :lvl                 => 10,
  :universe_id         => metaId,
  :description         => "La chimère est un monstre mythologique. Il est très intelligent et peut être très dangereux. Il est capable de tuer un homme en le dévorant.",
)
creature19.save!
p "creature Chimère created!"

creature20 = Creature.new(
  :name                => "Centaure",
  :lvl                 => 10,
  :universe_id         => metaId,
  :description         => "Le centaure est un monstre mythologique. Il est très intelligent et peut être très dangereux. Il est capable de tuer un homme en le pietinant avec ses pieds.",
)
creature20.save!
p "creature Centaure created!"

creature21 = Creature.new(
  :name                => "Harpie",
  :lvl                 => 10,
  :universe_id         => metaId,
  :description         => "La harpie est un monstre mythologique. Il est très intelligent et peut être très dangereux. Il est capable de tuer un homme en le transpercant avec ses griffes.",
)
creature21.save!
p "creature Harpie created!"

creature22 = Creature.new(
  :name                => "Griffon",
  :lvl                 => 10,
  :universe_id         => metaId,
  :description         => "Le griffon est un monstre mythologique. Il est très intelligent et peut être très dangereux. Il est capable de tuer un homme en le transpercant avec ses griffes.",
)
creature22.save!
p "creature Griffon created!"

creature23 = Creature.new(
  :name                => "Licorne",
  :lvl                 => 10,
  :universe_id         => metaId,
  :description         => "La licorne est un monstre mythologique. Il est très intelligent et peut être très dangereux. Son sang est capable de guérir toutes les blessures. Il est capable de tuer un homme en le transpercant avec sa corne.",
)
creature23.save!
p "creature Licorne created!"

creature24 = Creature.new(
  :name                => "Minotaure",
  :lvl                 => 10,
  :universe_id         => metaId,
  :description         => "Le minotaure est un monstre mythologique. Il est très intelligent et peut être très dangereux. Il est capable de tuer un homme en le serant dans ses bras.",
)
creature24.save!
p "creature Minotaure created!"

creature25 = Creature.new(
  :name                => "Dragon",
  :lvl                 => 10,
  :universe_id         => metaId,
  :description         => "Le dragon est un monstre mythologique. Il est très intelligent et peut être très dangereux. Il est capable de tuer un homme en le transpercant avec ses griffes ou en le brulant.",
)
creature25.save!
p "creature Dragon created!"

creature26 = Creature.new(
  :name                => "Hippogriffe",
  :lvl                 => 10,
  :universe_id         => metaId,
  :description         => "L'hippogriffe est un monstre mythologique. Il est très intelligent et peut être très dangereux. Il est capable de tuer un homme en le transpercant avec ses griffes.",
)
creature26.save!
p "creature Hippogriffe created!"

creature27 = Creature.new(
  :name                => "Gorgone",
  :lvl                 => 10,
  :universe_id         => metaId,
  :description         => "La gorgone est un monstre mythologique. Il est très intelligent et peut être très dangereux. Il est capable de tuer un homme.",
)
creature27.save!
p "creature Gorgone created!"

creature28 = Creature.new(
  :name                => "Sphinx",
  :lvl                 => 10,
  :universe_id         => metaId,
  :description         => "Le sphinx est un monstre mythologique. Il est très intelligent et peut être très dangereux. Il est capable de tuer un homme.",
)
creature28.save!
p "creature Sphinx created!"

creature29 = Creature.new(
  :name                => "Phénix",
  :lvl                 => 10,
  :universe_id         => metaId,
  :description         => "Le phénix est un monstre mythologique. Il est très intelligent et peut être très dangereux. Il est capable de se régénérer.",
)
creature29.save!
p "creature Phénix created!"

creature30 = Creature.new(
  :name                => "Basilic",
  :lvl                 => 10,
  :universe_id         => metaId,
  :description         => "Le basilic est un monstre mythologique. Il est très intelligent et peut être très dangereux. Il est capable de tuer un homme en le regardant dans les yeux.",
)
creature30.save!
p "creature Basilic created!"

creature31 = Creature.new(
  :name                => "Sirène",
  :lvl                 => 10,
  :universe_id         => metaId,
  :description         => "La sirène est un monstre mythologique. Il est très intelligent et peut être très dangereux. Elle est capable de charmer les hommes.",
)
creature31.save!
p "creature Sirène created!"

creature32 = Creature.new(
  :name                => "Kraken",
  :lvl                 => 10,
  :universe_id         => metaId,
  :description         => "Le kraken est un monstre mythologique. Il est très intelligent et peut être très dangereux. Il est capable de tuer un homme en le noyant.",
)
creature32.save!
p "creature Kraken created!"

creature33 = Creature.new(
  :name                => "Cerbère",
  :lvl                 => 10,
  :universe_id         => metaId,
  :description         => "Le cerbère est un monstre mythologique. Il est très intelligent et peut être très dangereux. Il est capable de tuer un homme en le mordant.",
)
creature33.save!
p "creature Cerbère created!"

creature34 = Creature.new(
  :name                => "Cyclope",
  :lvl                 => 10,
  :universe_id         => metaId,
  :description         => "Le cyclope est un monstre mythologique. Il est très intelligent et peut être très dangereux. Il est capable de tuer un homme en le regardant dans son oeil.",
)
creature34.save!
p "creature Cyclope created!"

creature35 = Creature.new(
  :name                => "Hydre",
  :lvl                 => 10,
  :universe_id         => metaId,
  :description         => "L'hydre est un monstre mythologique. Il est très intelligent et peut être très dangereux. Il est capable de tuer un homme en le mordant. Il est capable de se régénérer.",
)
creature35.save!
p "creature Hydre created!"

creature36 = Creature.new(
  :name                => "Le chient de Niko",
  :lvl                 => 42,
  :universe_id         => metaId,
  :description         => "Le chient de Niko est un monstre mythologique. Il n'est pas très intelligent et peut être très dangereux. Il est capable de tuer un homme en le mordant. Il est capable de se régénérer. Son point faible est la nourriture. Il est très gourmand. Il est capable de manger n'importe quoi. Il est capable de manger des humains. Attention à son pet toxique. Il est capable de tuer un homme en le faisant vomir.",
)
creature36.save!
p "creature Le chient de Niko created!"

creature37 = Creature.new(
  :name                => "Le sphynx de Max",
  :lvl                 => 42,
  :universe_id         => metaId,
  :description         => "Le sphynx de Max est un monstre mythologique. Il est très intelligent et n'est pas dangereux. Il est capable de tuer un homme en s'endormant sur son visage. Il est capable de se régénérer. Son point faible est la nourriture. Il est très gourmand. Il est capable de manger n'importe quoi.",
)
creature37.save!
p "creature Le sphynx de Max created!"

creature38 = Creature.new(
  :name                => "La chouette de Gaëtan",
  :lvl                 => 42,
  :universe_id         => metaId,
  :description         => "La chouette de Gaëtan est un monstre mythologique. Il est très intelligent et peut être très dangereux. Il est capable de tuer un homme en le griffant. Il est capable de se régénérer. Il n'est actif que la nuit et si il est dans un endroit sombre. Son point faible est la lumière. Il est très sensible à la lumière. Il est capable de s'évanouir.",
)
creature38.save!
p "creature La chouette de Gaëtan created!"

creature39 = Creature.new(
  :name                => "La baleine de Louise",
  :lvl                 => 42,
  :universe_id         => metaId,
  :description         => "La baleine de Louise est un monstre mythologique. Il est très intelligent et peut être très dangereux. Il est capable de tuer un homme en le noyant. Il est capable de manger n'importe quoi. Il est capable de manger des humains.",
)
creature39.save!
p "creature La Baleine de Louise created!"

creature40 = Creature.new(
  :name                => "La loutre harmoniciste de JJ",
  :lvl                 => 42,
  :universe_id         => metaId,
  :description         => "La loutre de JJ est une créature magique. Elle suivra les joueurs dans leurs aventure. Elle aime jouer de la musique, surtout au mauvais moment"
)
creature40.save!
p "creature La loutre harmoniciste de JJ created!"

# \\\\\\\//////////\\\\\\\ #

####################
p "Creating creatures for fantasy universe..."
####################
# Fantasy :
#   Dragons
#   Licornes
#   Griffons
#   Fées
#   Gobelins
#   Ogres
#   Minotaures
#   Hydres
#   Harpies
#   Elfes noirs

creature41 = Creature.new(
  :name                => "dragon",
  :lvl                 => 10,
  :universe_id         => fantasyId,
  :description         => "Le dragon est un monstre mythologique. Il est très intelligent et peut être très dangereux. Il est capable de tuer un homme en le brûlant.",
)
creature41.save!
p "creature Dragon created!"

creature42 = Creature.new(
  :name                => "licorne",
  :lvl                 => 4,
  :universe_id         => fantasyId,
  :description         => "La licorne est un monstre mythologique. Il est très intelligent et peut être très dangereux. Il est capable de tuer un homme en le mordant. Son sang est magique. Il est capable de guérir les blessures.",
)
creature42.save!
p "creature Licorne created!"

creature43 = Creature.new(
  :name                => "griffon",
  :lvl                 => 8,
  :universe_id         => fantasyId,
  :description        => "Le griffon est un monstre mythologique. Il est très intelligent et peut être très dangereux. Il est capable de tuer un homme en le mordant. Il est capable de voler.",
)
creature43.save!
p "creature Griffon created!"

creature44 = Creature.new(
  :name                => "fée",
  :lvl                 => 3,
  :universe_id         => fantasyId,
  :description         => "La fée est un monstre mythologique. Il est très intelligent et n'est pas très dangereux. Il est capable de voler.",
)
creature44.save!
p "creature Fée created!"

creature45 = Creature.new(
  :name                => "gobelin",
  :lvl                 => 2,
  :universe_id         => fantasyId,
  :description         => "Le gobelin est un monstre mythologique. Il est très intelligent et peut être très dangereux. Il est capable de tuer un homme en le mordant. Il aime voler les objets des humains.",
)
creature45.save!
p "creature Gobelin created!"

creature46 = Creature.new(
  :name                => "ogre",
  :lvl                 => 7,
  :universe_id         => fantasyId,
  :description         => "L'ogre est un monstre mythologique. Il est très intelligent et peut être très dangereux. Il est capable de tuer un homme en le mordant.  Il est très gourmand. Il est capable de manger n'importe quoi.",
)
creature46.save!
p "creature Ogre created!"

creature47 = Creature.new(
  :name                => "minotaure",
  :lvl                 => 6,
  :universe_id         => fantasyId,
  :description         => "Le minotaure est un monstre mythologique. Il est très intelligent et peut être très dangereux. Il est capable de tuer un homme en le mordant.",
)
creature47.save!
p "creature Minotaure created!"

creature48 = Creature.new(
  :name                => "hydre",
  :lvl                 => 7,
  :universe_id         => fantasyId,
  :description         => "L'hydre est un monstre mythologique. Il est très intelligent et peut être très dangereux. Il est capable de se régénérer",
)
creature48.save!
p "creature Hydre created!"

creature49 = Creature.new(
  :name                => "harpie",
  :lvl                 => 3,
  :universe_id         => fantasyId,
  :description         => "La harpie est un monstre mythologique. Il est très intelligent et peut être très dangereux. Il est capable de tuer un homme en le griffant. Il est capable de voler.",
)
creature49.save!
p "creature Harpie created!"

creature50 = Creature.new(
  :name                => "elfe noir",
  :lvl                 => 6,
  :universe_id         => fantasyId,
  :description         => "L'elfe noir est une créature magique. Il est très intelligent et peut être très dangereux. Il est capable de tuer un homme facilement avec son arme. Il est capable de se téléporter.",
)
creature50.save!
p "creature Elfe noir created!"

#######################
p "Creating creatures for science fiction universe..."
#######################
# Sci-fi :
#   Robots
#   Extraterrestres
#   Cyborgs
#   Androides
#   Hologrammes
#   Parasites de l'espace
#   Créatures cristallines
#   Réplicants
#   Intelligences artificielles
#   Formes de vie amorphes

creature51 = Creature.new(
  :name                => "robot",
  :lvl                 => 3,
  :universe_id         => scienceFictionId,
  :description         => "Le robot est une créature artificielle. Il est très intelligent et peut être très dangereux. Il est capable de tuer un homme facilement.",
)
creature51.save!
p "creature Robot created!"

creature52 = Creature.new(
  :name                => "extraterrestre",
  :lvl                 => 5,
  :universe_id         => scienceFictionId,
  :description         => "L'extraterrestre est une créature extraterrestre. Il est très intelligent et peut être très dangereux. Il est capable de tuer un homme facilement.",
)
creature52.save!
p "creature Extraterrestre created!"

creature53 = Creature.new(
  :name                => "cyborg",
  :lvl                 => 4,
  :universe_id         => scienceFictionId,
  :description         => "Le cyborg est une créature artificielle. Il est très intelligent et peut être très dangereux. Il est capable de tuer un homme facilement.",
)
creature53.save!
p "creature Cyborg created!"

creature54 = Creature.new(
  :name                => "androïde",
  :lvl                 => 4,
  :universe_id         => scienceFictionId,
  :description         => "L'androïde est une créature artificielle. Il est très intelligent et peut être très dangereux. Il est capable de tuer un homme facilement.",
)
creature54.save!
p "creature Androïde created!"

creature55 = Creature.new(
  :name                => "hologramme",
  :lvl                 => 1,
  :universe_id         => scienceFictionId,
  :description         => "L'hologramme est une créature artificielle. Il n'est pas très intelligent et ne peut pas être très dangereux.",
)
creature55.save!
p "creature Hologramme created!"

creature56 = Creature.new(
  :name                => "parasite de l'espace",
  :lvl                 => 6,
  :universe_id         => scienceFictionId,
  :description         => "Le parasite de l'espace est une créature extraterrestre. Il est très intelligent et est très dangereux. Il est capable de tuer un homme facilement. Il est capable de se téléporter.",
)
creature56.save!
p "creature Parasite de l'espace created!"

creature57 = Creature.new(
  :name                => "créature cristalline",
  :lvl                 => 2,
  :universe_id         => scienceFictionId,
  :description         => "La créature cristalline est une créature extraterrestre. Elle n'est pas très intelligente et ne peut pas être très dangereuse.",
)
creature57.save!
p "creature Créature cristalline created!"

creature58 = Creature.new(
  :name                => "réplicant",
  :lvl                 => 5,
  :universe_id         => scienceFictionId,
  :description         => "Le réplicant est une créature artificielle. Il est très intelligent et peut être très dangereux. Il est capable de tuer un homme facilement.",
)
creature58.save!
p "creature Réplicant created!"

creature59 = Creature.new(
  :name                => "intelligence artificielle",
  :lvl                 => 4,
  :universe_id         => scienceFictionId,
  :description         => "L'intelligence artificielle est une créature artificielle. Elle est très très intelligente et peut être très dangereuse. Son comportement changera en fonction de la formulation des interaction avec les joueurs.",
)
creature59.save!
p "creature Intelligence artificielle created!"

creature60 = Creature.new(
  :name                => "forme de vie amorphe",
  :lvl                 => 1,
  :universe_id         => scienceFictionId,
  :description         => "La forme de vie amorphe est une créature extraterrestre. Elle n'est pas très intelligente et ne peut pas être très dangereuse.",
)
creature60.save!
p "creature Forme de vie amorphe created!"

#######################
p "Creating creatures for modern universe..."
#######################
# Modern :
#   Chiens
#   Chats
#   Serpents
#   Araignées
#   Rat
#   Taupes
#   Moustiques
#   Fourmis
#   Cafards
#   Pigeons

creature61 = Creature.new(
  :name                => "chien",
  :lvl                 => 1,
  :universe_id         => modernId,
  :description         => "Le chien est une créature domestique. Il est très intelligent et peut être très dangereux.",
)
creature61.save!
p "creature Chien created!"

creature62 = Creature.new(
  :name                => "chat",
  :lvl                 => 1,
  :universe_id         => modernId,
  :description         => "Le chat est une créature domestique. Il est très intelligent et peut être très dangereux.",
)
creature62.save!
p "creature Chat created!"

creature63 = Creature.new(
  :name                => "serpent",
  :lvl                 => 2,
  :universe_id         => modernId,
  :description         => "Le serpent est une créature des reptiles. Il est très intelligent et peut être dangereux. Il est très apprécié pour sa viande et sa peau.",
)
creature63.save!
p "creature Serpent created!"

creature64 = Creature.new(
  :name                => "araignée",
  :lvl                 => 2,
  :universe_id         => modernId,
  :description         => "L'araignée est une créature de la famille des arachnides. Elle est très intelligente et peut être dangereuse. Elle est très appréciée pour sa viande.",
)
creature64.save!
p "creature Araignée created!"

creature65 = Creature.new(
  :name                => "rat",
  :lvl                 => 1,
  :universe_id         => modernId,
  :description         => "Le rat est une créature de la famille des rongeurs. Il est très intelligent et peut être très dangereux. Il est très apprécié pour sa viande.",
)
creature65.save!
p "creature Rat created!"

creature66 = Creature.new(
  :name                => "Taupe",
  :lvl                 => 1,
  :universe_id         => modernId,
  :description         => "La taupe est une créature de la famille des rongeurs. Elle est très intelligente et peut être très dangereuse. Elle est très appréciée pour sa viande. Elle est capable de creuser des galeries souterraines créant des gouffres sous les pieds des joueurs.",
)
creature66.save!
p "creature Taupe created!"

creature67 = Creature.new(
  :name                => "loup",
  :lvl                 => 2,
  :universe_id         => modernId,
  :description         => "Le loup est une créature de la famille des canidés. Il est très intelligent et peut être très dangereux. Il est très apprécié pour sa viande et sa fourure.",
)
creature67.save!
p "creature Loup created!"

creature68 = Creature.new(
  :name                => "ours",
  :lvl                 => 8,
  :universe_id         => modernId,
  :description         => "L'ours est une créature de la famille des ursidés. Il est très intelligent et peut être très dangereux. Il est très apprécié pour sa viande et sa fourure.",
)
creature68.save!
p "creature Ours created!"

creature69 = Creature.new(
  :name                => "Pigeons",
  :lvl                 => 5,
  :universe_id         => modernId,
  :description         => "Le pigeon est une créature de la famille des columbidés. Il est très intelligent et peut être très dangereux. Il est très apprécié pour sa viande.",
)
creature69.save!
p "creature Pigeons created!"

creature70 = Creature.new(
  :name                => "Cafards",
  :lvl                 => 6,
  :universe_id         => modernId,
  :description         => "Le cafard est une créature de la famille des blattidés. Je ne sais pas quoi en faire.",
)
creature70.save!
p "creature Cafards created!"

#######################
p "Creating creatures for Historical universe..."
#######################
# Historical :
#   Lions
#   Tigres
#   Éléphants
#   Loups
#   Hippopotames
#   Rhinocéros
#   Crocodiles
#   Vautours
#   Renards
#   Sangliers

creature71 = Creature.new(
  :name                => "Lions",
  :lvl                 => 5,
  :universe_id         => historicalId,
  :description        => "Le lion est une créature de la famille des félidés. Il est très intelligent et peut être très dangereux. Il est très apprécié pour sa viande et sa fourure. Il peut être utilisé pour chasser les éléphants. Il peut tuer un joueur en un coup.",
)
creature71.save!
p "creature Lions created!"

creature72 = Creature.new(
  :name                => "Tigres",
  :lvl                 => 6,
  :universe_id         => historicalId,
  :description         => "Le tigre est une créature de la famille des félidés. Il est très intelligent et peut être très dangereux. Il est très apprécié pour sa viande et sa fourure. Il peut tuer un joueur en un coup."
)
creature72.save!
p "creature Tigres created!"

creature73 = Creature.new(
  :name                => "Éléphants",
  :lvl                 => 10,
  :universe_id         => historicalId,
  :description         => "L'éléphant est une créature de la famille des éléphantidés. Il est très intelligent et peut être très dangereux. Il est très apprécié pour sa viande et sa fourure. Il peut tuer un joueur en un coup."
)
creature73.save!
p "creature Éléphants created!"

creature74 = Creature.new(
  :name                => "Loups",
  :lvl                 => 3,
  :universe_id         => historicalId,
  :description         => "Le loup est une créature de la famille des canidés. Il est très intelligent et peut être très dangereux. Il est très apprécié pour sa viande et sa fourure."
)
creature74.save!
p "creature Loups created!"

creature75 = Creature.new(
  :name                => "Hippopotames",
  :lvl                 => 8,
  :universe_id         => historicalId,
  :description         => "L'hippopotame est une créature de la famille des hippopotamidés. Il est très intelligent et peut être très dangereux. Il est très apprécié pour sa viande et sa fourure. Il peut tuer un joueur en un coup."
)
creature75.save!
p "creature Hippopotames created!"

creature76 = Creature.new(
  :name                => "Rhinocéros",
  :lvl                 => 7,
  :universe_id         => historicalId,
  :description         => "Le rhinocéros est une créature de la famille des rhinocéridés. Il est très intelligent et peut être très dangereux. Il est très apprécié pour sa viande et son cuir. Il peut tuer un joueur en un coup."
)
creature76.save!
p "creature Rhinocéros created!"

creature77 = Creature.new(
  :name                => "Crocodiles",
  :lvl                 => 4,
  :universe_id         => historicalId,
  :description         => "Le crocodile est une créature de la famille des crocodilidés. Il est très intelligent et peut être très dangereux. Il est très apprécié pour sa viande et son cuir. Il peut tuer un joueur en un coup."
)
creature77.save!
p "creature Crocodiles created!"

creature78 = Creature.new(
  :name                => "Vautours",
  :lvl                 => 2,
  :universe_id         => historicalId,
  :description         => "Le vautour est une créature de la famille des cathartidés. Il est très intelligent et peut être très dangereux. Il peut tuer un joueur en un coup avec ses griffes. Il peut être utilisé pour trouver des cadavres."
)
creature78.save!
p "creature Vautours created!"

creature79 = Creature.new(
  :name                => "Renards",
  :lvl                 => 1,
  :universe_id         => historicalId,
  :description         => "Le renard est une créature de la famille des canidés. Il est très intelligent et peut être très dangereux. Il est très apprécié pour sa viande et sa fourure."
)
creature79.save!
p "creature Renards created!"

creature80 = Creature.new(
  :name                => "Sangliers",
  :lvl                 => 8,
  :universe_id         => historicalId,
  :description         => "Le sanglier est une créature de la famille des suidés. Il est très intelligent et peut être très dangereux. Il est très apprécié pour sa viande et sa fourure. Il peut tuer un joueur en un coup."
)
creature80.save!
p "creature Sangliers created!"

#######################
p "Creating creatures for Post-apo universe..."
#######################
# Post-apo :
#   Rats mutants
#   Scorpions géants
#   Araignées mutantes
#   Sangsues géantes
#   Ours zombies
#   Coyotes mutés
#   Vautours mutants
#   Hyènes irradiées
#   Cafards géants
#   Chiens de l'enfer.

creature81 = Creature.new(
  :name                => "Rats mutants",
  :lvl                 => 3,
  :universe_id         => postApocalypticId,
  :description         => "Le rat est une créature de la famille des muridés. Il est très intelligent et peut être très dangereux. Il est très apprécié pour sa viande et sa fourure. Il peut tuer un joueur en un coup."
)
creature81.save!
p "creature Rats mutants created!"

creature82 = Creature.new(
  :name                => "Scorpions géants",
  :lvl                 => 5,
  :universe_id         => postApocalypticId,
  :description         => "Le scorpion est une créature de la famille des scorpionidés. Il est très intelligent et peut être très dangereux. Il est très apprécié pour sa viande. Il peut tuer un joueur en un coup."
)
creature82.save!
p "creature Scorpions géants created!"

creature83 = Creature.new(
  :name                => "Araignées mutantes",
  :lvl                 => 4,
  :universe_id         => postApocalypticId,
  :description         => "L'araignée est une créature de la famille des arachnides. Elle est très intelligente et peut être très dangereuse. Elle est très appréciée pour sa viande mais peut être toxique. Elle peut tuer un joueur en un coup."
)
creature83.save!
p "creature Araignées mutantes created!"

creature84 = Creature.new(
  :name                => "Sangsues géantes",
  :lvl                 => 6,
  :universe_id         => postApocalypticId,
  :description         => "La sangsue est une créature de la famille des hémaphrodites. Elle est très intelligente et peut être très dangereuse. Sa viande n'est pas comestible et est très toxique. Elle peut tuer un joueur en un coup."
)
creature84.save!
p "creature Sangsues géantes created!"

creature85 = Creature.new(
  :name                => "Ours zombies",
  :lvl                 => 8,
  :universe_id         => postApocalypticId,
  :description         => "L'ours est une créature de la famille des ursidés. Il est très intelligent et peut être très dangereux. Il est très apprécié pour sa viande mais peut être toxique et sa fourure. Il peut tuer un joueur en un coup."
)
creature85.save!
p "creature Ours zombies created!"

creature86 = Creature.new(
  :name                => "Coyotes mutés",
  :lvl                 => 7,
  :universe_id         => postApocalypticId,
  :description         => "Le coyote est une créature de la famille des canidés. Il est très intelligent et peut être très dangereux. Il est très apprécié pour sa viande et sa fourure. Il peut tuer un joueur en un coup."
)
creature86.save!
p "creature Coyotes mutés created!"

creature87 = Creature.new(
  :name                => "Vautours mutants",
  :lvl                 => 3,
  :universe_id         => postApocalypticId,
  :description         => "Le vautour est une créature de la famille des cathartidés. Il est très intelligent et peut être très dangereux. Il peut tuer un joueur en un coup avec ses griffes. Il peut être utilisé pour trouver des cadavres."
)
creature87.save!
p "creature Vautours mutants created!"

creature88 = Creature.new(
  :name                => "Hyènes irradiées",
  :lvl                 => 6,
  :universe_id         => postApocalypticId,
  :description         => "L'hyène est une créature de la famille des hyénidés. Elle est très intelligente et peut être très dangereuse. Elle est très appréciée pour sa viande et sa fourure. Elle peut tuer un joueur en un coup."
)
creature88.save!
p "creature Hyènes irradiées created!"

creature89 = Creature.new(
  :name                => "Cafards géants",
  :lvl                 => 6,
  :universe_id         => postApocalypticId,
  :description         => "Le cafard est une créature de la famille des blattidés. Il est très intelligent et peut être très dangereux. Il est très apprécié pour sa viande et sa fourure. Il peut tuer un joueur en un coup."
)
creature89.save!
p "creature Cafards géants created!"

creature90 = Creature.new(
  :name                => "Chiens de l'enfer",
  :lvl                 => 10,
  :universe_id         => postApocalypticId,
  :description         => "Le chien est une créature de la famille des canidés. Il est très intelligent et peut être très dangereux. Il peut tuer un joueur en un coup en le dévorant."
)
creature90.save!
p "creature Chiens de l'enfer created!"

#######################

p "Finished! #{Creature.count} creatures created!"
