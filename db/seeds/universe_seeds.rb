p "#############################################"
p "#############################################"
p "UNIVERSE SEEDS"
p "#############################################"
p "#############################################"

# kill all existing data
p "Destroying all universe ..."
Universe.destroy_all

p "Creating universe..."

universeMeta = Universe.new(
  :name                 => "Meta"
)
universeMeta.save!
p "universe Meta created!"

universeScienceFiction = Universe.new(
  :name                 => "ScienceFiction"
)
universeScienceFiction.save!
p "universe Science Fiction created!"

universeFantasy = Universe.new(
  :name                 => "Fantasy"
)
universeFantasy.save!
p "universe Fantasy created!"

universeModern = Universe.new(
  :name                 => "Modern"
)
universeModern.save!
p "universe Modern created!"

universeHistorical = Universe.new(
  :name                 => "Historical"
)
universeHistorical.save!
p "universe Historical created!"

universePostApocalyptic = Universe.new(
  :name                 => "Post Apocalyptic"
)
universePostApocalyptic.save!
p "universe Post Apocalyptic created!"

p "Finished! #{Universe.count} universes created!"
