require "open-uri"

photo_Niko = File.open URI.open("https://res.cloudinary.com/dlixoduzo/image/upload/v1678197602/hzgmkz7uahqpqisbxbgf.jpg")
photo_Loulou = File.open URI.open("https://res.cloudinary.com/dlixoduzo/image/upload/v1678198070/ibmdxmdsgglpzq1hym7j.jpg")
photo_Max = File.open URI.open("https://res.cloudinary.com/dlixoduzo/image/upload/v1678197991/gxoaocfucyiotoc4l3cn.jpg")
photo_Gaston = File.open URI.open("https://res.cloudinary.com/dlixoduzo/image/upload/v1678196995/r8ib3orhcge9pc4ipnyg.jpg")
photo_Admin = File.open URI.open("https://res.cloudinary.com/dlixoduzo/image/upload/v1678200826/Gaston_LeYeti_loutre_qui_joue_de_lhamonica_39c2c097-b838-4000-b89b-72c8da453b71_ngkmyz.png")

# kill all existing data

p "Destroying all users ..."
p User.count
User.destroy_all
p User.count

p "Destroying all buildings ..."
p Building.count
Building.destroy_all
p Building.count

p "Destroying all creatures ..."
p Creature.count
Creature.destroy_all
p Creature.count

p "Destroying all races ..."
p Race.count
Race.destroy_all
p Race.count

p "Destroying all armories ..."
p Armory.count
Armory.destroy_all
p Armory.count

p "Destroying all weapons ..."
p Weapon.count
Weapon.destroy_all
p Weapon.count

p "Destroying all jobs ..."
p Job.count
Job.destroy_all
p Job.count

p "Destroying all cities ..."
p City.count
City.destroy_all
p City.count

p "Destroying all architectures ..."
p Architecture.count
Architecture.destroy_all
p Architecture.count

p "Destroying all pnjs ..."
p Pnj.count
Pnj.destroy_all
p Pnj.count

p "Destroying all players ..."
p Player.count
Player.destroy_all
p Player.count

p "Destroying all parties ..."
p Party.count
Party.destroy_all
p Party.count

p "Destroying all universes ..."
p Universe.count
Universe.destroy_all
p Universe.count


p "#############################################"
p "#############################################"
p "USER SEEDS"
p "#############################################"
p "#############################################"

p "Creating users..."

userNiko = User.new(
  :email                 => "niko@test.com",
  :password              => "123456",
  :password_confirmation => "123456",
  :username              => "Niko",
)
userNiko.save!
userNiko.avatar.attach(io: photo_Niko, filename: 'photo de Niko', content_type: 'image/jpg')
userNiko.save!

p "user Niko created!"

userLoulou = User.new(
  :email                 => "loulou@test.com",
  :password              => "123456",
  :password_confirmation => "123456",
  :username              => "Louise",
)
userLoulou.save!
userLoulou.avatar.attach(io: photo_Loulou, filename: 'photo de Louise', content_type: 'image/jpg')
userLoulou.save!
p "user Loulou created!"

userMax = User.new(
  :email                 => "max@test.com",
  :password              => "123456",
  :password_confirmation => "123456",
  :username              => "Max",
)
userMax.save!
userMax.avatar.attach(io: photo_Max, filename: 'photo de Max', content_type: 'image/jpg')
userMax.save!
p "user Max created!"

userGaston = User.new(
  :email                 => "gaston@test.com",
  :password              => "123456",
  :password_confirmation => "123456",
  :username              => "Gaston",
)
userGaston.save!
userGaston.avatar.attach(io: photo_Gaston, filename: 'photo de Gaston', content_type: 'image/jpg')
userGaston.save!
p "user Gaston created!"

userAdmin = User.new(
  :email                 => "admin@test.com",
  :password              => "123456",
  :password_confirmation => "123456",
  :username              => "admin_root"
)
userAdmin.save!
userAdmin.avatar.attach(io: photo_Admin, filename: 'photo de Admin', content_type: 'image/png')
userAdmin.save!
p "user Admin created!"

p "Finished! #{User.count} users created!"

p "#############################################"
p "#############################################"
p "UNIVERSE SEEDS"
p "#############################################"
p "#############################################"

p "Creating universe..."

universeMeta = Universe.new(
  :name                 => "Meta"
)
universeMeta.save!
metaId = universeMeta.id
p "universe Meta created!"

universeScienceFiction = Universe.new(
  :name                 => "ScienceFiction"
)
universeScienceFiction.save!
scienceFictionId = universeScienceFiction.id
p "universe Science Fiction created!"

universeFantasy = Universe.new(
  :name                 => "Fantasy"
)
universeFantasy.save!
fantasyId = universeFantasy.id
p "universe Fantasy created!"

universeModern = Universe.new(
  :name                 => "Modern"
)
universeModern.save!
modernId = universeModern.id
p "universe Modern created!"


universeHistorical = Universe.new(
  :name                 => "Historical"
)
universeHistorical.save!
historicalId = universeHistorical.id
p "universe Historical created!"

universePostApocalyptic = Universe.new(
  :name                 => "Post Apocalyptic"
)
universePostApocalyptic.save!
postApocalypticId = universePostApocalyptic.id
p "universe Post Apocalyptic created!"

p "Finished! #{Universe.count} universes created!"

p "#############################################"
p "#############################################"
p "PARTIES SEEDS"
p "#############################################"
p "#############################################"

p "Creating parties..."

party1 = Party.new(
  :name                 => "Les Aventuriers du petit Nicolas",
  :bible              => "Bienvenue dans un monde ravagé par la destruction, où les ruines des anciennes civilisations côtoient les déserts radioactifs et les villes en ruines. Dans cet univers post-apocalyptique, vous allez incarner des survivants courageux, qui ont réussi à traverser les épreuves les plus difficiles pour atteindre le point de départ de votre aventure. /n Vous allez devoir affronter des dangers inconnus, qu'ils soient naturels ou créés par les restes de la technologie du passé. Vous allez rencontrer des communautés de survivants qui ont chacune leur propre histoire et leurs propres secrets. Vous allez explorer des lieux mystérieux et dangereux, pour découvrir des trésors cachés ou pour tenter de comprendre ce qui est arrivé au monde. /n Le monde post-apocalyptique est un endroit impitoyable, où la survie est une lutte quotidienne, où les choix sont souvent difficiles et les conséquences graves. Mais c'est également un monde plein de promesses, où les héros peuvent se révéler, où les amitiés les plus solides peuvent se former et où l'espoir peut renaître. /nÊtes-vous prêts à affronter les dangers du monde post-apocalyptique, à explorer ses mystères et à créer votre propre histoire dans ce monde en ruines ? Alors, embarquez pour une aventure unique et inoubliable, où tout est possible et où votre destin est entre vos mains.",
  :universe_id          => postApocalypticId,
  :user_id              => userNiko.id,
  :player_1             => "Noki",
  :player_2             => "Loulou",
)
party1.save!
party1id = party1.id
p "party #{party1.name} created!"

party2 = Party.new(
  :name                 => "Les Aventuriers des guerriers de l'ombre",
  :bible              => "Bienvenue dans un monde ravagé par la destruction, où les ruines des anciennes civilisations côtoient les déserts radioactifs et les villes en ruines. Dans cet univers post-apocalyptique, vous allez incarner des survivants courageux, qui ont réussi à traverser les épreuves les plus difficiles pour atteindre le point de départ de votre aventure. /n Vous allez devoir affronter des dangers inconnus, qu'ils soient naturels ou créés par les restes de la technologie du passé. Vous allez rencontrer des communautés de survivants qui ont chacune leur propre histoire et leurs propres secrets. Vous allez explorer des lieux mystérieux et dangereux, pour découvrir des trésors cachés ou pour tenter de comprendre ce qui est arrivé au monde. /n Le monde post-apocalyptique est un endroit impitoyable, où la survie est une lutte quotidienne, où les choix sont souvent difficiles et les conséquences graves. Mais c'est également un monde plein de promesses, où les héros peuvent se révéler, où les amitiés les plus solides peuvent se former et où l'espoir peut renaître. /nÊtes-vous prêts à affronter les dangers du monde post-apocalyptique, à explorer ses mystères et à créer votre propre histoire dans ce monde en ruines ? Alors, embarquez pour une aventure unique et inoubliable, où tout est possible et où votre destin est entre vos mains.",
  :universe_id          => postApocalypticId,
  :user_id              => userNiko.id,
  :player_1             => "Noki",
  :player_2             => "Loulou",
)
party2.save!
party2Id = party2.id
p "party #{party2.name} created!"

p "Finished! #{Party.count} party created!"

p "#############################################"
p "#############################################"
p "BUILDING SEEDS"
p "#############################################"
p "#############################################"

p "Creating building..."

building1 = Building.new(
  :name => "Hopital",
)
building1.save!
building1Id = building1.id
p "Building Hopital created!"

building2 = Building.new(
  :name => "Hotel",
)
building2.save!
building2Id = building2.id
p "Building Hotel created!"

building3 = Building.new(
  :name => "Caserne",
)
building3.save!
building3Id = building3.id
p "Building Caserne created!"

building4 = Building.new(
  :name => "Magasin",
)
building4.save!
building4Id = building4.id
p "Building Magasin created!"

building5 = Building.new(
  :name => "Bar",
)
building5.save!
building5Id = building5.id
p "Building Bar created!"

p "Finished! #{Building.count} buildings created!"

p "#############################################"
p "#############################################"
p "CREATURE SEEDS"
p "#############################################"
p "#############################################"

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
  :name                => "Le chien de Niko",
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

p "## Creating creatures for fantasy universe..."

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

p "##Creating creatures for science fiction universe..."

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

p "## Creating creatures for modern universe..."

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

p "## Creating creatures for Historical universe..."

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

p "## Creating creatures for Post-apo universe..."

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
  :description         => "Le cafard est une créature de la famille des blattidés. Il n'est pas très intelligent mais peut être très dangereux. Il est très apprécié pour sa viande. Il peut tuer un joueur en un coup."
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

p "Finished! #{Creature.count} creatures created!"

p "#############################################"
p "#############################################"
p "RACE SEEDS"
p "#############################################"
p "#############################################"

p "Creating race..."

p "## General Race loading..."

humain1 = Race.new(
  :name                => "Humain",
  :culture             => "La vie",
  :divinity            => "La roue de la vie",
  :category            => "Ally",
  :universe_id         => metaId,
)
humain1.save!
humain1Id = humain1.id
p "race #{humain1.name} #{humain1.category} created!"

humain2 = Race.new(
  :name                => "Humain",
  :culture             => "La vie",
  :divinity            => "La roue de feu",
  :category            => "Enemy",
  :universe_id         => metaId,
)
humain2.save!
humain2Id = humain2.id
p "race #{humain2.name} #{humain2.category} created!"

p "## Fantasy Race loading..."

elfe3 = Race.new(
  :name                => "Elfes",
  :culture             => "De sang",
  :divinity            => "La roue de sang",
  :category            => "Enemy",
  :universe_id         => fantasyId,
)
elfe3.save!
elfe3Id = elfe3.id
p "race #{elfe3.name} #{elfe3.category} created!"

elfe4 = Race.new(
  :name                => "Elfes",
  :culture             => "De la nuit",
  :divinity            => "La roue de la nuit",
  :category            => "Ally",
  :universe_id         => fantasyId,
)
elfe4.save!
elfe4Id = elfe4.id
p "race #{elfe4.name} #{elfe4.category} created!"

nain4 = Race.new(
  :name                => "Nains",
  :culture             => "De la montagne",
  :divinity            => "La montagne",
  :category            => "Ally",
  :universe_id         => fantasyId,
)
nain4.save!
nain4Id = nain4.id
p "race #{nain4.name} #{nain4.category} created!"

orc5 = Race.new(
  :name                => "Orcs",
  :culture             => "De la nuit",
  :divinity            => "La déesse de la nuit",
  :category            => "Enemy",
  :universe_id         => fantasyId,
)
orc5.save!
orc5Id = orc5.id
p "race #{orc5.name} #{orc5.category} created!"

p "## Sci-fi Race loading..."

cyborg6 = Race.new(
  :name                => "Cyborgs",
  :culture             => "Gtd563kdkk",
  :divinity            => "Bit-No_Name",
  :category            => "Ally",
  :universe_id         => scienceFictionId,
)
cyborg6.save!
cyborg6Id = cyborg6.id
p "race #{cyborg6.name} #{cyborg6.category} created!"

alien7 = Race.new(
  :name                => "Aliens",
  :culture             => "*****",
  :divinity            => "Maliköu",
  :category            => "Enemy",
  :universe_id         => scienceFictionId,
)
alien7.save!
alien7Id = alien7.id
p "race #{alien7.name} #{alien7.category} created!"

alien8 = Race.new(
  :name                => "Aliens",
  :culture             => "*****",
  :divinity            => "Galastar",
  :category            => "Ally",
  :universe_id         => scienceFictionId,
)
alien8.save!
alien8Id = alien8.id
p "race #{alien8.name} #{alien8.category} created!"

zerg9 = Race.new(
  :name                => "Zergs",
  :culture             => "*****",
  :divinity            => "Zerg",
  :category            => "Enemy",
  :universe_id         => scienceFictionId,
)
zerg9.save!
zerg9Id = zerg9.id
p "race #{zerg9.name} #{zerg9.category} created!"

p "## Historical Race loading..."

viking10 = Race.new(
  :name                => "Vikings",
  :culture             => "Vinland",
  :divinity            => "Odin",
  :category            => "Ally",
  :universe_id         => historicalId,
)
viking10.save!
viking10Id = viking10.id
p "race #{viking10.name} #{viking10.category} created!"

azteque11 = Race.new(
  :name                => "Aztèques",
  :culture             => "Aztlán",
  :divinity            => "Huitzilopochtli",
  :category            => "Enemy",
  :universe_id         => historicalId,
)
azteque11.save!
azteque11Id = azteque11.id
p "race #{azteque11.name} #{azteque11.category} created!"

vampire12 = Race.new(
  :name                => "Vampires",
  :culture             => "Vampirism",
  :divinity            => "Vampirism",
  :category            => "Enemy",
  :universe_id         => historicalId,
)
vampire12.save!
vampire12Id = vampire12.id
p "race #{vampire12.name} #{vampire12.category} created!"

loupgarou13 = Race.new(
  :name                => "Loups-garous",
  :culture             => "Loup-garou",
  :divinity            => "Loup-garou",
  :category            => "Enemy",
  :universe_id         => historicalId,
)
loupgarou13.save!
loupgarou13Id = loupgarou13.id
p "race #{loupgarou13.name} #{loupgarou13.category} created!"

p "## Post-apocalyptic Race loading..."

humain14 = Race.new(
  :name                => "Humains mutants",
  :culture             => "Mutant",
  :divinity            => "Mutant",
  :category            => "Enemy",
  :universe_id         => postApocalypticId,
)
humain14.save!
humain14Id = humain14.id
p "race #{humain14.name} #{humain14.category} created!"

goule15 = Race.new(
  :name                => "Goules",
  :culture             => "Likon",
  :divinity            => "Louisation",
  :category            => "Enemy",
  :universe_id         => postApocalypticId,
)
goule15.save!
goule15Id = goule15.id
p "race #{goule15.name} #{goule15.category} created!"

clone16 = Race.new(
  :name                => "Clones défectueux",
  :culture             => "Clonage",
  :divinity            => "Human",
  :category            => "Ally",
  :universe_id         => postApocalypticId,
)
clone16.save!
clone16Id = clone16.id
p "race #{clone16.name} #{clone16.category} created!"

humain16 = Race.new(
  :name                => "Survivants génétiquement modifiés",
  :culture             => "Génétique",
  :divinity            => "Human",
  :category            => "Enemy",
  :universe_id         => postApocalypticId,
)
humain16.save!
humain16Id = humain16.id
p "race #{humain16.name} #{humain16.category} created!"

p "## Modern Race loading..."

humain17 = Race.new(
  :name                => "Humain Manifestant",
  :culture             => "Manifestant",
  :divinity            => "CGT",
  :category            => "Enemy",
  :universe_id         => modernId,
)
humain17.save!
humain17Id = humain17.id
p "race #{humain17.name} #{humain17.category} created!"

humain18 = Race.new(
  :name                => "Humain Politicien",
  :culture             => "Politicien",
  :divinity            => "Corompus",
  :category            => "Enemy",
  :universe_id         => modernId,
)
humain18.save!
humain18Id = humain18.id
p "race #{humain18.name} #{humain18.category} created!"

humain19 = Race.new(
  :name                => "Humain",
  :culture             => "normal",
  :divinity            => "Humain",
  :category            => "Ally",
  :universe_id         => modernId,
)
humain19.save!
humain19Id = humain19.id
p "race #{humain19.name} #{humain19.category} created!"

p "Finished! #{Race.count} races created!"

p "#############################################"
p "#############################################"
p "ARMORY SEEDS"
p "#############################################"
p "#############################################"

p "Creating armories..."

p "## Meta Armory loading..."

lame1 = Armory.new(
  :kind                => "Lame",
  :weapon_range        => "cac",
  :universe_id         => metaId,
)
lame1.save!
lame1Id = lame1.id
p "armory Lame created!"

aap5 = Armory.new(
  :kind                => "Arme à projectile",
  :weapon_range        => "long",
  :universe_id         => metaId,
)
aap5.save!
aap5Id = aap5.id
p "armory Arme à projectile created!"

p "## PostApocalyptic Armory loading..."

pistolet2 = Armory.new(
  :kind                => "Pistolet",
  :weapon_range        => "mid",
  :universe_id         => postApocalypticId,
)
pistolet2.save!
pistolet2Id = pistolet2.id
p "armory Pistolet created!"

fap3 = Armory.new(
  :kind                => "Fusil à pompe",
  :weapon_range        => "mid",
  :universe_id         => postApocalypticId,
)
fap3.save!
fap3Id = fap3.id
p "armory Fusil à pompe created!"

grenade4 = Armory.new(
  :kind                => "Grenade",
  :weapon_range        => "mid",
  :universe_id         => postApocalypticId,
)
grenade4.save!
grenade4Id = grenade4.id
p "armory Grenade created!"

lanceflamme6 = Armory.new(
  :kind                => "Lance-flamme",
  :weapon_range        => "cac",
  :universe_id         => postApocalypticId,
)
lanceflamme6.save!
lanceflamme6Id = lanceflamme6.id
p "armory Lance-flamme created!"

fassaut7 = Armory.new(
  :kind                => "Fusil d'assaut",
  :weapon_range        => "mid",
  :universe_id         => postApocalypticId,
)
fassaut7.save!
fassaut7Id = fassaut7.id
p "armory Fusil d'assaut created!"

sniper8 = Armory.new(
  :kind                => "Sniper",
  :weapon_range        => "long",
  :universe_id         => postApocalypticId,
)
sniper8.save!
sniper8Id = sniper8.id
p "armory Sniper created!"

aaenergy9 = Armory.new(
  :kind                => "Arme à énergie",
  :weapon_range        => "long",
  :universe_id         => postApocalypticId,
)
aaenergy9.save!
aaenergy9Id = aaenergy9.id
p "armory Arme à énergie created!"

contondante10 = Armory.new(
  :kind                => "Contondante",
  :weapon_range        => "cac",
  :universe_id         => postApocalypticId,
)
contondante10.save!
contondante10Id = contondante10.id

p "Finished! #{Armory.count} weapons for Armory created!"

p "#############################################"
p "#############################################"
p "WEAPON SEEDS"
p "#############################################"
p "#############################################"

p "Creating weapon..."

p "Post-apocalyptic Weapon loading..."

weapon1 = Weapon.new(
  :name                => "Arc de Scavenger",
  :level               => 3,
  :rarity              => "Commun",
  :price               => 65,
  :armory_id           => aap5Id,
  :lootable            => true,
  :party_id            => party2Id,
  :description         => "Un arc de fortune fabriqué à partir de matériaux de récupération tels que des tuyaux en métal, des pièces de vélo et du ruban adhésif. Plus dangereux qu'il n'y paraît",
)
weapon1.save!
weapon1Id = weapon1.id
p "weapon: Arc de Scavenger created!"

weapon2 = Weapon.new(
  :name                => "Fusil de Chasse des Terres Désolées",
  :level               => 5,
  :rarity              => "Rare",
  :price               => 75,
  :armory_id           => fap3Id,
  :lootable            => true,
  :party_id            => party2Id,
  :description         => "Un fusil de chasse classique au design robuste qui peut résister aux conditions difficiles des terres désolées.",
)
weapon2.save!
weapon2Id = weapon2.id
p "weapon: Fusil de Chasse des Terres Désolées created!"

weapon3 = Weapon.new(
  :name                => "Lame Rouillée",
  :level               => 2,
  :rarity              => "Commun",
  :price               => 15,
  :armory_id           => lame1Id,
  :lootable            => true,
  :party_id            => party2Id,
  :description         => "Une machette usée qui a visiblement vu de nombreuses batailles. Sa lame rouillée ajoute un élément de danger, car toute blessure qu'elle inflige pourrait s'infecter.",
)
weapon3.save!
weapon3Id = weapon3.id
p "weapon: Lame Rouillée created!"

weapon4 = Weapon.new(
  :name                => "Sac à Dos - Lance-Flammes",
  :level               => 8,
  :rarity              => "Épique",
  :price               => 240,
  :armory_id           => lanceflamme6Id,
  :lootable            => false,
  :party_id            => party2Id,
  :description         => "Un sac à dos volumineux avec un réservoir de carburant et une buse qui émet des flammes. C'est une arme rare et très recherchée qui peut facilement décimer des groupes d'ennemis et cuire des steaks de coyote en un rien de temps. Utilisation optimale à courte distance.",
)
weapon4.save!
weapon4Id = weapon4.id
p "weapon: Sac à Dos - Lance-Flammes created!"

weapon5 = Weapon.new(
  :name                => "Bombe à Clous",
  :level               => 5,
  :rarity              => "Commun",
  :price               => 75,
  :armory_id           => grenade4Id,
  :lootable            => true,
  :party_id            => party2Id,
  :description         => "Un dispositif explosif fabriqué à partir d'un conteneur en métal rempli de clous et d'autres objets tranchants. Il est souvent utilisé comme piège ou jeté en dernier recours.",
)
weapon5.save!
weapon5Id = weapon5.id
p "weapon: Bombe à Clous created!"

weapon6 = Weapon.new(
  :name                => "Arbalète du Survivant",
  :level               => 5,
  :rarity              => "Rare",
  :price               => 120,
  :armory_id           => aap5Id,
  :lootable            => true,
  :party_id            => party2Id,
  :description         => "Une arbalète de chasse simple à entretenir et mortelle à courte ou moyenne distance. Les carreaux ne sont pas faciles à trouver, il vaut mieux s'assurer de les récupérer autant que possible après un tir.",
)
weapon6.save!
weapon6Id = weapon6.id
p "weapon: Arbalète du Survivant created!"

weapon7 = Weapon.new(
  :name                => "Pied-de-Biche des Terres Désolées",
  :level               => 3,
  :rarity              => "Commun",
  :price               => 60,
  :armory_id           => contondante10Id,
  :lootable            => true,
  :party_id            => party2Id,
  :description         => "Une arme de mêlée polyvalente qui peut être utilisée à la fois pour le combat et la récupération. Son poids et sa force brute la rendent efficace contre les zombies, mutants et androïdes.",
)
weapon7.save!
weapon7Id = weapon7.id
p "weapon: Pied-de-Biche des Terres Désolées created!"

weapon8 = Weapon.new(
  :name                => "Revolver de Chef de Gang",
  :level               => 7,
  :rarity              => "Légendaire",
  :price               => 180,
  :armory_id           => pistolet2Id,
  :lootable            => true,
  :party_id            => party2Id,
  :description         => "Un revolver robuste facile à entretenir et à réparer, très prisé des pillards pour sa fiabilité. Cette version moddée est équipée d'un stabilisateur et d'un pointeur laser.",
)
weapon8.save!
weapon8Id = weapon8.id
p "weapon: Revolver de Chef de Gang created!"

weapon9 = Weapon.new(
  :name                => "Épée-Machette",
  :level               => 9,
  :rarity              => "Rare",
  :price               => 185,
  :armory_id           => lame1Id,
  :lootable            => false,
  :party_id            => party2Id,
  :description         => "Une arme hybride qui combine les meilleurs aspects d'une machette et d'une épée. Elle est souvent fabriquée à partir de pièces de récupération et affûtée à l'aide de méthodes primitives. Oubliez son aspect bricolé, vous rigolerez moins quand quand elle sifflera près de vos oreilles!",
)
weapon9.save!
weapon9Id = weapon9.id
p "weapon: Épée-Machette created!"

weapon10 = Weapon.new(
  :name                => "Lance-grenades Improvisé",
  :level               => 6,
  :rarity              => "Rare",
  :price               => 75,
  :armory_id           => grenade4Id,
  :lootable            => true,
  :party_id            => party2Id,
  :description         => "Un dispositif de type lance-pierre qui lance des grenades artisanales sur une courte distance. Il est souvent utilisé pour des tactiques de guérilla et des attaques surprises.",
)
weapon10.save!
weapon10Id = weapon10.id
p "weapon: Lance-grenades Improvisé created!"

weapon11 = Weapon.new(
  :name                => "Lance-couilles de Briagdeur",
  :level               => 12,
  :rarity              => "Légendaire",
  :price               => 75,
  :armory_id           => grenade4Id,
  :lootable            => true,
  :party_id            => party2Id,
  :description         => "Un dispositif de type lance-pierre qui lance des couilles artisanales sur une courte distance. Il est souvent utilisé pour des tactiques de guérilla et des attaques surprises.",
)
weapon11.save!
weapon11Id = weapon11.id
p "weapon: Lance-couilles Improvisé created!"

p "Finished! #{Weapon.count} weapons created!"

p "#############################################"
p "#############################################"
p "JOB SEEDS"
p "#############################################"
p "#############################################"

p "Creating job..."

#  -> Guerrier
#  -> Mage
#  -> Voleur
#  -> Prêtre
#  -> Barde
#  -> Druide
#  -> Paladin
#  -> Rôdeur
#  -> Moine
#  -> Démoniste
#  -> Barbare
#  -> Sorcier
#  -> Combattant
#  -> Artificier
# Alchemist -> Alchimiste
#  -> Archer
#  -> Voleur
#  -> Marchand
# Blacksmith -> Forgeron
# Innkeeper -> Tavernier
# Scout -> Éclaireur
# Explorer -> Explorateur
# Hunter -> Chasseur
# Farmer -> Fermier
# Doctor -> Médecin
# Artisan -> Artisan
# Scholar -> Érudit
# Priest -> Prêtre
# Breeder -> Éleveur
# Pirate -> Pirate
# Soldier -> Soldat
# Noble -> Noble

p "General Job loading..."

archer = Job.new(
  :name         => "archer",
  :weaponized   => "true",
  :weapon_range => "long",
  :universe_id  => metaId,
)
archer.save!
archerId = archer.id
p "job #{archer.name} created!"

thief = Job.new(
  :name         => "thief",
  :weaponized   => "true",
  :weapon_range => "cac",
  :universe_id  => metaId,
)
thief.save!
thiefId = thief.id
p "job #{thief.name} created!"

priest = Job.new(
  :name         => "priest",
  :weaponized   => "true",
  :weapon_range => "cac",
  :universe_id  => metaId,
)
priest.save!
priestId = priest.id
p "job #{priest.name} created!"

warrior = Job.new(
  :name         => "warrior",
  :weaponized   => "true",
  :weapon_range => "cac",
  :universe_id  => metaId,
)
warrior.save!
warriorId = warrior.id
p "job #{warrior.name} created!"

mage_long = Job.new(
  :name         => "mage",
  :weaponized   => "true",
  :weapon_range => "long",
  :universe_id  => metaId,
)
mage_long.save!
mage_longId = mage_long.id
p "job #{mage_long.name} created!"

mage_mid = Job.new(
  :name         => "mage",
  :weaponized   => "true",
  :weapon_range => "long",
  :universe_id  => metaId,
)
mage_mid.save!
mage_midId = mage_mid.id
p "job #{mage_mid.name} created!"

rogue = Job.new(
  :name         => "rogue",
  :weaponized   => "true",
  :weapon_range => "cac",
  :universe_id  => metaId,
)
rogue.save!
rogueId = rogue.id
p "job #{rogue.name} created!"

cleric = Job.new(
  :name         => "cleric",
  :weaponized   => "true",
  :weapon_range => "long",
  :universe_id  => metaId,
)
cleric.save!
clericId = cleric.id
p "job #{cleric.name} created!"

bard = Job.new(
  :name         => "bard",
  :weaponized   => "false",
  :weapon_range => "cac",
  :universe_id  => metaId,
)
bard.save!
bardId = bard.id
p "job #{bard.name} created!"

druid = Job.new(
  :name         => "druid",
  :weaponized   => "true",
  :weapon_range => "cac",
  :universe_id  => metaId,
)
druid.save!
druidId = druid.id
p "job #{druid.name} created!"

paladin = Job.new(
  :name         => "paladin",
  :weaponized   => "true",
  :weapon_range => "cac",
  :universe_id  => metaId,
)
paladin.save!
paladinId = paladin.id
p "job #{paladin.name} created!"

ranger = Job.new(
  :name         => "ranger",
  :weaponized   => "true",
  :weapon_range => "long",
  :universe_id  => metaId,
)
ranger.save!
rangerId = ranger.id
p "job #{ranger.name} created!"

monk = Job.new(
  :name         => "monk",
  :weaponized   => "true",
  :weapon_range => "cac",
  :universe_id  => metaId,
)
monk.save!
monkId = monk.id
p "job #{monk.name} created!"

warlock = Job.new(
  :name         => "warlock",
  :weaponized   => "true",
  :weapon_range => "long",
  :universe_id  => metaId,
)
warlock.save!
warlockId = warlock.id
p "job #{warlock.name} created!"

barbarian = Job.new(
  :name         => "barbarian",
  :weaponized   => "true",
  :weapon_range => "cac",
  :universe_id  => metaId,
)
barbarian.save!
barbarianId = barbarian.id
p "job #{barbarian.name} created!"

sorcerer = Job.new(
  :name         => "sorcerer",
  :weaponized   => "true",
  :weapon_range => "long",
  :universe_id  => metaId,
)
sorcerer.save!
sorcererId = sorcerer.id
p "job #{sorcerer.name} created!"

fighter = Job.new(
  :name         => "fighter",
  :weaponized   => "true",
  :weapon_range => "cac",
  :universe_id  => metaId,
)
fighter.save!
fighterId = fighter.id
p "job #{fighter.name} created!"

artificer = Job.new(
  :name         => "artificer",
  :weaponized   => "true",
  :weapon_range => "long",
  :universe_id  => metaId,
)
artificer.save!
artificerId = artificer.id
p "job #{artificer.name} created!"

alchemist = Job.new(
  :name         => "alchemist",
  :weaponized   => "true",
  :weapon_range => "long",
  :universe_id  => metaId,
)
alchemist.save!
alchemistId = alchemist.id
p "job #{alchemist.name} created!"

inventor = Job.new(
  :name         => "inventor",
  :weaponized   => "false",
  :weapon_range => "long",
  :universe_id  => metaId,
)
inventor.save!
inventorId = inventor.id
p "job #{inventor.name} created!"


marchand = Job.new(
  :name         => "merchant",
  :weaponized   => "false",
  :weapon_range => "cac",
  :universe_id  => metaId,
)
marchand.save!
marchandId = marchand.id
p "job #{marchand.name} created!"

infiermer = Job.new(
  :name         => "nurse",
  :weaponized   => "false",
  :weapon_range => "cac",
  :universe_id  => metaId,
)
infiermer.save!
infiermerId = infiermer.id
p "job #{infiermer.name} created!"

barman = Job.new(
  :name         => "barman",
  :weaponized   => "false",
  :weapon_range => "cac",
  :universe_id  => metaId,
)
barman.save!
barmanId = barman.id
p "job #{barman.name} created!"

military = Job.new(
  :name         => "military",
  :weaponized   => "true",
  :weapon_range => "mid",
  :universe_id  => metaId,
)
military.save!
militaryId = military.id
p "job #{military.name} created!"

military_cac = Job.new(
  :name         => "military",
  :weaponized   => "true",
  :weapon_range => "cac",
  :universe_id  => metaId,
)
military_cac.save!
militaryCacId = military_cac.id
p "job #{military_cac.name} created!"

tavernier = Job.new(
  :name         => "tavernier",
  :weaponized   => "false",
  :weapon_range => "cac",
  :universe_id  => metaId,
)
tavernier.save!
tavernierId = tavernier.id
p "job #{tavernier.name} created!"

prostituee = Job.new(
  :name         => "prostitute",
  :weaponized   => "false",
  :weapon_range => "cac",
  :universe_id  => metaId,
)
prostituee.save!
prostitueeId = prostituee.id
p "job #{prostituee.name} created!"

weaponseller = Job.new(
  :name         => "weapon seller",
  :weaponized   => "true",
  :weapon_range => "cac",
  :universe_id  => metaId,
)
weaponseller.save!
weaponsellerId = weaponseller.id
p "job #{weaponseller.name} created!"

p "## Post-Apocalyptic Job loading..."

ingenieur = Job.new(
  :name         => "ingénieur",
  :weaponized   => "true",
  :weapon_range => "mid",
  :universe_id  => postApocalypticId,
)
ingenieur.save!
ingenieurId = ingenieur.id
p "job #{ingenieur.name} created!"

voleur = Job.new(
  :name         => "voleur",
  :weaponized   => "true",
  :weapon_range => "long",
  :universe_id  => postApocalypticId,
)
voleur.save!
voleurId = voleur.id
p "job #{voleur.name} created!"

espion = Job.new(
  :name         => "espion",
  :weaponized   => "true",
  :weapon_range => "mid",
  :universe_id  => postApocalypticId,
)
espion.save!
espionId = espion.id
p "job #{espion.name} created!"

raider = Job.new(
  :name         => "pillard",
  :weaponized   => "false",
  :weapon_range => "cac",
  :universe_id  => postApocalypticId,
)
raider.save!
raiderId = raider.id
p "job #{raider.name} created!"

survivor = Job.new(
  :name         => "Survivant",
  :weaponized   => "true",
  :weapon_range => "mid",
  :universe_id  => postApocalypticId,
)
survivor.save!
survivorId = survivor.id
p "job #{survivor.name} created!"

bountyhunter = Job.new(
  :name         => "Chasseur de prime",
  :weaponized   => "true",
  :weapon_range => "cac",
  :universe_id  => postApocalypticId,
)
bountyhunter.save!
bountyhunterId = bountyhunter.id
p "job #{bountyhunter.name} created!"

gangleader = Job.new(
  :name         => "Chef de gang",
  :weaponized   => "false",
  :weapon_range => "cac",
  :universe_id  => postApocalypticId,
)
gangleader.save!
gangleaderId = gangleader.id
p "job #{gangleader.name} created!"

exorcist = Job.new(
  :name         => "exorciste",
  :weaponized   => "true",
  :weapon_range => "long",
  :universe_id  => postApocalypticId,
)
exorcist.save!
exorcistId = exorcist.id
p "job #{exorcist.name} created!"

zombie = Job.new(
  :name         => "Zombie",
  :weaponized   => "true",
  :weapon_range => "mid",
  :universe_id  => postApocalypticId,
)
zombie.save!
zombieId = zombie.id
p "job #{zombie.name} created!"

p "Finished! #{Job.count} jobs created!"



p "#############################################"
p "#############################################"
p "MAP SEEDS"
p "#############################################"
p "#############################################"

p "Creating one map..."

mapDeNiko = Map.new(
  :name                 => "La map de Niko",
  :content              => '<div id="maze_container"><div id="maze" data-steps="218"><div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="door exit"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div></div><div><div class="wall"></div><div class=""></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class=""></div><div class=""></div><div class=""></div><div class="wall"></div><div class=""></div><div class=""></div><div class=""></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class=""></div><div class=""></div><div class=""></div><div class="wall"></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class="wall"></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class="wall"></div><div class=""></div><div class=""></div><div class=""></div><div class="wall"></div><div class=""></div><div class=""></div><div class=""></div><div class="wall"></div></div><div><div class="wall"></div><div class=""></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class=""></div><div class="nubbin"></div><div class=""></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class=""></div><div class="wall"></div></div><div><div class="wall"></div><div class=""></div><div class=""></div><div class=""></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class=""></div><div class=""></div><div class=""></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class=""></div><div class=""></div><div class=""></div><div class="wall"></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class=""></div><div class="wall"></div></div><div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class=""></div><div class="nubbin"></div><div class=""></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class="wall sentinel"></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class="wall"></div><div class="wall"></div></div><div><div class="wall"></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class="wall"></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class=""></div><div class=""></div><div class=""></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class=""></div><div class=""></div><div class=""></div><div class="wall"></div></div><div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class=""></div><div class="nubbin"></div><div class=""></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class=""></div><div class="nubbin"></div><div class=""></div><div class="wall"></div></div><div><div class="wall"></div><div class=""></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class=""></div><div class=""></div><div class=""></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class=""></div><div class=""></div><div class=""></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class=""></div><div class=""></div><div class=""></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class="wall"></div><div class=""></div><div class=""></div><div class=""></div><div class="wall"></div><div class=""></div><div class=""></div><div class=""></div><div class="wall"></div></div><div><div class="wall"></div><div class=""></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class=""></div><div class="wall"></div></div><div><div class="wall"></div><div class=""></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class="wall"></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class="wall"></div><div class=""></div><div class=""></div><div class=""></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class=""></div><div class="wall"></div></div><div><div class="wall"></div><div class=""></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class=""></div><div class="nubbin"></div><div class=""></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class=""></div><div class="nubbin wall"></div><div class=""></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class=""></div><div class="wall"></div></div><div><div class="wall"></div><div class=""></div><div class=""></div><div class=""></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class="wall"></div><div class="key"></div><div class="wall"></div><div class=""></div><div class="nubbin wall"></div><div class=""></div><div class="wall"></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class=""></div><div class=""></div><div class=""></div><div class="wall"></div><div class=""></div><div class="wall"></div></div><div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class=""></div><div class="nubbin wall"></div><div class=""></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class=""></div><div class="nubbin wall"></div><div class=""></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class=""></div><div class="nubbin"></div><div class=""></div><div class="wall"></div><div class=""></div><div class="wall"></div></div><div><div class="wall"></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class=""></div><div class="nubbin wall"></div><div class=""></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class=""></div><div class=""></div><div class=""></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class="wall"></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class="wall"></div></div><div><div class="wall"></div><div class=""></div><div class="nubbin"></div><div class=""></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class=""></div><div class="nubbin"></div><div class=""></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class=""></div><div class="nubbin wall"></div><div class=""></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall sentinel"></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div></div><div><div class="wall"></div><div class=""></div><div class=""></div><div class=""></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class=""></div><div class=""></div><div class=""></div><div class="wall"></div><div class=""></div><div class=""></div><div class=""></div><div class="wall"></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class="wall"></div><div class=""></div><div class=""></div><div class=""></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class=""></div><div class=""></div><div class=""></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class=""></div><div class=""></div><div class=""></div><div class="wall"></div></div><div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class=""></div><div class="nubbin"></div><div class=""></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class=""></div><div class="wall"></div></div><div><div class="wall"></div><div class=""></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class=""></div><div class=""></div><div class=""></div><div class="wall"></div><div class=""></div><div class=""></div><div class=""></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class="wall"></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class="wall"></div><div class=""></div><div class=""></div><div class=""></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class=""></div><div class="wall"></div></div><div><div class="wall"></div><div class=""></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class=""></div><div class="nubbin"></div><div class=""></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class=""></div><div class="nubbin"></div><div class=""></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class=""></div><div class="wall"></div></div><div><div class="wall"></div><div class=""></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class=""></div><div class=""></div><div class=""></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class="wall"></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class=""></div><div class="wall"></div></div><div><div class="wall"></div><div class=""></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class=""></div><div class="nubbin"></div><div class=""></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class=""></div><div class="wall"></div></div><div><div class="wall"></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class="wall"></div><div class=""></div><div class=""></div><div class=""></div><div class="wall"></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class=""></div><div class=""></div><div class=""></div><div class="wall"></div><div class=""></div><div class=""></div><div class=""></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class=""></div><div class=""></div><div class=""></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class=""></div><div class="wall"></div></div><div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class=""></div><div class="nubbin"></div><div class=""></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class=""></div><div class="nubbin"></div><div class=""></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class=""></div><div class="nubbin wall"></div><div class=""></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class="wall"></div><div class="wall"></div></div><div><div class="wall"></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class="wall"></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class="wall"></div><div class=""></div><div class=""></div><div class=""></div><div class="wall"></div><div class=""></div><div class=""></div><div class=""></div><div class="nubbin wall"></div><div class=""></div><div class="wall"></div><div class=""></div><div class=""></div><div class=""></div><div class="wall"></div></div><div><div class="wall"></div><div class=""></div><div class="nubbin wall"></div><div class="nubbin wall"></div><div class="nubbin wall"></div><div class=""></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class=""></div><div class="nubbin wall"></div><div class="nubbin wall"></div><div class="nubbin wall wall"></div><div class=""></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class=""></div><div class="wall"></div></div><div><div class="wall"></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class="wall"></div></div><div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div></div><div><div class="wall"></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class="wall"></div><div class=""></div><div class=""></div><div class=""></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class="wall sentinel"></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class="wall"></div></div><div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class=""></div><div class="nubbin"></div><div class=""></div><div class="wall"></div><div class=""></div><div class="nubbin wall"></div><div class=""></div><div class="wall"></div><div class=""></div><div class="nubbin wall"></div><div class=""></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class=""></div><div class="nubbin"></div><div class=""></div><div class="wall"></div></div><div><div class="wall"></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class="wall"></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class="wall"></div><div class=""></div><div class="nubbin wall"></div><div class=""></div><div class="wall"></div><div class=""></div><div class="nubbin wall"></div><div class=""></div><div class="wall"></div><div class=""></div><div class=""></div><div class=""></div><div class="wall"></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class="wall sentinel"></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class="wall"></div></div><div><div class="wall"></div><div class=""></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class=""></div><div class="nubbin wall"></div><div class=""></div><div class="wall"></div><div class=""></div><div class="nubbin wall"></div><div class=""></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class=""></div><div class="wall"></div></div><div><div class="wall"></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class="wall"></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class="wall"></div><div class=""></div><div class=""></div><div class=""></div><div class="wall"></div><div class=""></div><div class=""></div><div class=""></div><div class="wall"></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class="wall"></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class="wall"></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class="wall"></div></div><div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class=""></div><div class="nubbin"></div><div class=""></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class=""></div><div class="nubbin"></div><div class=""></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div></div><div><div class="wall"></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class="wall"></div><div class=""></div><div class=""></div><div class=""></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class=""></div><div class=""></div><div class=""></div><div class="wall"></div><div class=""></div><div class=""></div><div class=""></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class="wall"></div></div><div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall sentinel"></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div></div><div><div class="wall"></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class="wall"></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class="wall"></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class="wall"></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class="wall"></div></div><div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class=""></div><div class="nubbin"></div><div class=""></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class=""></div><div class="nubbin"></div><div class=""></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class=""></div><div class="nubbin"></div><div class=""></div><div class="wall"></div></div><div><div class="wall"></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class="wall"></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class="wall"></div><div class=""></div><div class=""></div><div class=""></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class=""></div><div class=""></div><div class=""></div><div class="wall"></div><div class=""></div><div class=""></div><div class=""></div><div class="wall"></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class="wall"></div></div><div><div class="wall"></div><div class=""></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class=""></div><div class="nubbin"></div><div class=""></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class=""></div><div class="nubbin"></div><div class=""></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div></div><div><div class="wall"></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class="wall"></div><div class=""></div><div class=""></div><div class=""></div><div class="wall"></div><div class=""></div><div class=""></div><div class=""></div><div class="wall"></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class="wall"></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class="wall"></div></div><div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="door entrance hero"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div></div></div></div>',
  :party_id              => party2Id,
)
mapDeNiko.save!
mapDeNikoId = mapDeNiko.id
p "Map de #{mapDeNiko.name} created"

p "finished! #{Map.count} map created"


p "#############################################"
p "#############################################"
p "CITIES SEEDS"
p "#############################################"
p "#############################################"

p "Creating cities..."

city1 = City.new(
  :name                 => "La cité de la mort",
  :content              => '<div id="maze_container"><div id="maze" data-steps="154"><div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="door exit"></div><div class="wall"></div></div><div><div class="wall"></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class="key"></div><div class="wall"></div><div class=""></div><div class=""></div><div class=""></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class="wall"></div></div><div><div class="wall"></div><div class=""></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class=""></div><div class="wall"></div></div><div><div class="wall"></div><div class=""></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class=""></div><div class=""></div><div class=""></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class="wall"></div><div class=""></div><div class="wall"></div></div><div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class=""></div><div class="nubbin wall"></div><div class=""></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class=""></div><div class="wall"></div></div><div><div class="wall"></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class="wall"></div><div class=""></div><div class=""></div><div class=""></div><div class="wall"></div><div class=""></div><div class="nubbin wall"></div><div class=""></div><div class="wall"></div><div class=""></div><div class=""></div><div class=""></div><div class="wall"></div><div class=""></div><div class=""></div><div class=""></div><div class="wall"></div><div class=""></div><div class="wall"></div></div><div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class=""></div><div class="nubbin wall"></div><div class=""></div><div class="wall"></div><div class=""></div><div class="nubbin"></div><div class=""></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class=""></div><div class="wall"></div></div><div><div class="wall"></div><div class=""></div><div class=""></div><div class=""></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class=""></div><div class=""></div><div class=""></div><div class="wall"></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class=""></div><div class=""></div><div class=""></div><div class="wall"></div></div><div><div class="wall"></div><div class=""></div><div class="nubbin"></div><div class=""></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class=""></div><div class="nubbin wall"></div><div class=""></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div></div><div><div class="wall"></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class="nubbin wall"></div><div class=""></div><div class="wall"></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class="wall"></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class="wall"></div></div><div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class=""></div><div class="nubbin wall wall"></div><div class=""></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class=""></div><div class="nubbin wall"></div><div class="nubbin wall"></div><div class="nubbin wall"></div><div class=""></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class=""></div><div class="wall"></div></div><div><div class="wall"></div><div class=""></div><div class=""></div><div class=""></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class=""></div><div class="nubbin wall"></div><div class=""></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class="wall"></div><div class=""></div><div class=""></div><div class=""></div><div class="wall"></div><div class=""></div><div class="wall"></div></div><div><div class="wall"></div><div class=""></div><div class="nubbin"></div><div class=""></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class=""></div><div class="nubbin wall"></div><div class=""></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class=""></div><div class="nubbin"></div><div class=""></div><div class="wall"></div><div class=""></div><div class="wall"></div></div><div><div class="wall"></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class="wall"></div><div class=""></div><div class=""></div><div class=""></div><div class="wall"></div><div class=""></div><div class=""></div><div class=""></div><div class="wall sentinel"></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class="wall"></div><div class=""></div><div class="wall"></div></div><div><div class="wall"></div><div class=""></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class="wall"></div><div class="wall"></div></div><div><div class="wall"></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class="wall"></div><div class=""></div><div class=""></div><div class=""></div><div class="wall"></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class="wall"></div></div><div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class="wall"></div><div class="wall"></div></div><div><div class="wall"></div><div class=""></div><div class=""></div><div class=""></div><div class="wall"></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class="wall"></div><div class=""></div><div class=""></div><div class=""></div><div class="wall"></div><div class=""></div><div class=""></div><div class=""></div><div class="wall"></div></div><div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class=""></div><div class="nubbin"></div><div class=""></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class=""></div><div class="nubbin"></div><div class=""></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div></div><div><div class="wall"></div><div class=""></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class=""></div><div class=""></div><div class=""></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class="wall"></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class="wall"></div></div><div><div class="wall"></div><div class=""></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div></div><div><div class="wall"></div><div class=""></div><div class="wall"></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class="wall"></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class="wall"></div></div><div><div class="wall"></div><div class=""></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class=""></div><div class="wall"></div></div><div><div class="wall"></div><div class=""></div><div class=""></div><div class=""></div><div class="wall"></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class="wall"></div><div class=""></div><div class=""></div><div class=""></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class=""></div><div class=""></div><div class=""></div><div class="wall"></div><div class=""></div><div class=""></div><div class=""></div><div class="wall"></div></div><div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="door entrance hero"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div></div></div></div>',
  :map_id              => mapDeNikoId,
)
city1.save!
city1Id = city1.id
p "city #{city1.name} created!"

city2 = City.new(
  :name                 => "La cité de la vie de ses morts",
  :content              => '<div id="maze_container"><div id="maze" data-steps="116"><div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="door exit"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div></div><div><div class="wall"></div><div class=""></div><div class=""></div><div class=""></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class="wall"></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class="wall"></div></div><div><div class="wall"></div><div class=""></div><div class="nubbin"></div><div class=""></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class=""></div><div class="wall"></div></div><div><div class="wall"></div><div class=""></div><div class=""></div><div class=""></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class=""></div><div class=""></div><div class=""></div><div class="wall"></div><div class=""></div><div class=""></div><div class=""></div><div class="wall sentinel"></div><div class=""></div><div class=""></div><div class=""></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class=""></div><div class="wall"></div></div><div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class=""></div><div class="nubbin"></div><div class=""></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class=""></div><div class="wall"></div></div><div><div class="wall"></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class="wall"></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class=""></div><div class=""></div><div class=""></div><div class="wall"></div><div class=""></div><div class="wall"></div></div><div><div class="wall"></div><div class=""></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class=""></div><div class="nubbin"></div><div class=""></div><div class="wall"></div><div class=""></div><div class="wall"></div></div><div><div class="wall"></div><div class=""></div><div class=""></div><div class=""></div><div class="wall"></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class="wall"></div><div class=""></div><div class=""></div><div class=""></div><div class="wall"></div><div class=""></div><div class=""></div><div class=""></div><div class="wall"></div><div class=""></div><div class=""></div><div class=""></div><div class="wall"></div><div class="key"></div><div class="wall"></div></div><div><div class="wall"></div><div class=""></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class=""></div><div class="nubbin"></div><div class=""></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class=""></div><div class="nubbin"></div><div class=""></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class="wall sentinel"></div><div class="wall"></div></div><div><div class="wall"></div><div class=""></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class=""></div><div class=""></div><div class=""></div><div class="wall"></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class="wall"></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class="wall"></div><div class=""></div><div class="wall"></div></div><div><div class="wall"></div><div class=""></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class=""></div><div class="wall"></div></div><div><div class="wall"></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class="wall"></div><div class=""></div><div class=""></div><div class=""></div><div class="wall"></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class="wall"></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class="wall"></div></div><div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div></div><div><div class="wall"></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class="wall"></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class="wall"></div></div><div><div class="wall"></div><div class=""></div><div class="nubbin wall"></div><div class="nubbin wall"></div><div class="nubbin wall"></div><div class=""></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class=""></div><div class="nubbin"></div><div class=""></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class=""></div><div class="nubbin wall"></div><div class="nubbin wall"></div><div class="nubbin wall wall"></div><div class="nubbin wall"></div><div class="nubbin wall"></div><div class=""></div><div class="wall"></div></div><div><div class="wall"></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class=""></div><div class=""></div><div class=""></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class="wall"></div></div><div><div class="wall"></div><div class=""></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class="wall"></div><div class="wall"></div></div><div><div class="wall"></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class="wall"></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class="wall"></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class="wall"></div></div><div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class=""></div><div class="nubbin"></div><div class=""></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class="wall"></div><div class="wall"></div></div><div><div class="wall"></div><div class=""></div><div class=""></div><div class=""></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class=""></div><div class=""></div><div class=""></div><div class="wall"></div><div class=""></div><div class=""></div><div class=""></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class=""></div><div class=""></div><div class=""></div><div class="wall"></div><div class=""></div><div class=""></div><div class=""></div><div class="wall"></div></div><div><div class="wall"></div><div class=""></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class=""></div><div class="nubbin"></div><div class=""></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class=""></div><div class="nubbin"></div><div class=""></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class="wall"></div><div class="wall"></div></div><div><div class="wall"></div><div class=""></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class=""></div><div class=""></div><div class=""></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class="wall"></div></div><div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class=""></div><div class="wall"></div><div class="wall"></div><div class="wall"></div></div><div><div class="wall"></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class="wall"></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class=""></div><div class="wall"></div><div class=""></div><div class=""></div><div class=""></div><div class="wall"></div></div><div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="door entrance hero"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div><div class="wall"></div></div></div></div>',
  :map_id              => mapDeNikoId,
)
city2.save!
city2Id = city2.id
p "city #{city2.name} created!"

p "Finished! #{City.count} cities created!"



p "#############################################"
p "#############################################"
p "ARCHITECTURES SEEDS"
p "#############################################"
p "#############################################"

p "Creating architectures..."

archi1 = Architecture.new(
  :city_id             => city1Id,
  :building_id         => building1Id,
)
archi1.save!
archi1Id = archi1.id
p "archi #{Architecture.count} created!"

archi2 = Architecture.new(
  :city_id             => city1Id,
  :building_id         => building2Id,
)
archi2.save!
archi2Id = archi1.id
p "archi #{Architecture.count} created!"

archi3 = Architecture.new(
  :city_id             => city1Id,
  :building_id         => building4Id,
)
archi3.save!
archi3Id = archi3.id
p "archi #{Architecture.count} created!"



p "#############################################"
p "#############################################"
p "PNJ SEEDS"
p "#############################################"
p "#############################################"

p "Creating pnj..."

p "General Pnj loading..."

pnj1 = Pnj.new(
  :name               => "Mara",
  :lvl                => "2",
  :job_id             => mage_longId,
  :status             => "Ally",
  :race_id            => humain19Id,
  :architecture_id    => archi1Id,
  :party_id           => party2Id,
  :weapon_id          => weapon1Id,
  :description        => "Mara est une survivante robuste et astucieuse qui a réussi à rester en vie dans le désert post-apocalyptique en cherchant des fournitures et en évitant les gangs dangereux. Elle est toujours à la recherche d'une bonne affaire et possède un œil aiguisé pour repérer les articles de valeur.",
)
pnj1.save!
p "pnj #{pnj1.name} created!"

pnj2 = Pnj.new(
  :name               => "Zephyr",
  :lvl                => "5",
  :job_id             => warriorId,
  :status             => "Ennemy",
  :race_id            => viking10Id,
  :architecture_id    => archi3Id,
  :party_id           => party2Id,
  :weapon_id          => weapon3Id,
  :description => "",
)
pnj2.save!
p "pnj Zephyr created!"

pnj3 = Pnj.new(
  :name             => "Anna",
  :lvl              => "3",
  :job_id           => clericId,
  :status           => "Ally",
  :race_id          => viking10Id,
  :architecture_id  => archi2Id,
  :party_id         => party2Id,
  :weapon_id        => weapon2Id,
  :description      => "Anna est une médecin aimable et attentionnée qui voyage dans le désert en offrant ses services à quiconque en a besoin. Elle est compétente pour traiter les blessures et les maladies et possède un talent naturel pour calmer les patients. Elle est toujours à la recherche de nouveaux fournitures médicales à ajouter à son kit.",
)
pnj3.save!
p "pnj Anna created!"

pnj4 = Pnj.new(
  :name              => "Viper",
  :lvl               => "10",
  :job_id            => monkId,
  :status            => "Ennemy",
  :race_id           => goule15Id,
  :architecture_id   => archi2Id,
  :party_id          => party2Id,
  :weapon_id         => weapon10Id,
  :description       => "Viper est le cruel chef d'une bande de pillards qui terrorisent le désert. Il est un maître stratège et utilise la force de sa bande en nombre pour vaincre ses ennemis. Il est connu pour sa brutalité et a la réputation de ne laisser aucun survivant.",
)
pnj4.save!
p "pnj Viper created!"

pnj5 = Pnj.new(
  :name               => "Borglor",
  :lvl                => "3",
  :job_id             => artificerId,
  :status             => "Ennemy",
  :race_id            => humain19Id,
  :architecture_id    => archi1Id,
  :party_id           => party2Id,
  :weapon_id          => weapon1Id,
  :description        => "Borglor est un survivant ennemi qui vous veut du mal.",
)
pnj5.save!
p "pnj #{pnj5.name} created!"

pnj6 = Pnj.new(
  :name               => "Baloo",
  :lvl                => "4",
  :job_id             => paladinId,
  :status             => "Ally",
  :race_id            => viking10Id,
  :architecture_id    => archi3Id,
  :party_id           => party2Id,
  :weapon_id          => weapon3Id,
  :description => "",
)
pnj6.save!
p "pnj Baloo created!"

pnj7 = Pnj.new(
  :name             => "Gaston",
  :lvl              => "3",
  :job_id           => artificerId,
  :status           => "Ally",
  :race_id          => humain19Id,
  :architecture_id  => archi2Id,
  :party_id         => party2Id,
  :weapon_id        => weapon2Id,
  :description      => "Gaston fut un ancien barman qui ne veut plus qu'en découdre dorénavant.",
)
pnj7.save!
p "pnj Gaston created!"

pnj8 = Pnj.new(
  :name              => "Crazy",
  :lvl               => "8",
  :job_id            => druidId,
  :status            => "Ennemi",
  :race_id           => goule15Id,
  :architecture_id   => archi2Id,
  :party_id          => party2Id,
  :weapon_id         => weapon10Id,
  :description       => "Crazy est le cruel chef d'une bande de pillards qui terrorisent le désert. Il est un maître stratège et utilise la force de sa bande en nombre pour vaincre ses ennemis. Il est connu pour sa brutalité et a la réputation de ne laisser aucun survivant.",
)
pnj8.save!
p "pnj Crazy created!"


p "#############################################"
p "#############################################"
p "PLAYERS SEEDS"
p "#############################################"
p "#############################################"

p "Creating players..."

player1 = Player.new(
  :username               => "Charly",
  :party_id              => party2Id,
)
player1.save!
p "player #{player1.username} created!"

player2 = Player.new(
  :username               => "Keev",
  :party_id              => party2Id,
)
player2.save!
p "player #{player2.username} created!"

player3 = Player.new(
  :username               => "Brice",
  :party_id              => party2Id,
)
player3.save!
p "player #{player3.username} created!"

player4 = Player.new(
  :username               => "Eliott",
  :party_id              => party2Id,
)
player4.save!
p "player #{player4.username} created!"

player5 = Player.new(
  :username               => "Luce",
  :party_id              => party2Id,
)
player5.save!
p "player #{player5.username} created!"


p "#############################################"
p "#############################################"
p "✨✨✨ END SEEDS ✨✨✨"
p "#############################################"
p "#############################################"
