
p "importing seeds..."

p "importing user seeds..."
load(Rails.root.join('db', 'seeds', 'user_seeds.rb'))

userNikoFind = User.find_by(username: "Niko")
userNikoId = userNikoFind.id

userAdminFind = User.find_by(username: "admin_root")
userAdminId = userAdminFind.id

p "importing universe seeds..."
load(Rails.root.join('db', 'seeds', 'universe_seeds.rb'))

universeMeta = Universe.find_by(name: "Meta")
metaId = universeMeta.id

universeScienceFiction = Universe.find_by(name: "ScienceFiction")
scienceFictionId = universeScienceFiction.id

universeFantasy = Universe.find_by(name: "Fantasy")
fantasyId = universeFantasy.id

universeModern = Universe.find_by(name: "Modern")
modernId = universeModern.id

universeHistorical = Universe.find_by(name: "Historical")
historicalId = universeHistorical.id

universePostApocalyptic = Universe.find_by(name: "Post Apocalyptic")
postApocalypticId = universePostApocalyptic.id

p "importing creatures seeds..."
load(Rails.root.join('db', 'seeds', 'creature_seeds.rb'))

p "importing races seeds..."
load(Rails.root.join('db', 'seeds', 'race_seeds.rb'))
