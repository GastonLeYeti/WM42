p "#############################################"
p "#############################################"
p "BUILDING SEEDS"
p "#############################################"
p "#############################################"

# kill all existing data
p "Destroying all buildings ..."
PNJ.destroy_all

p "Creating building..."

###############
p "General Building loading..."
###############

building1 = Building.new(
  :name => "Hopital",
)
building1.save!
p "pnj Hopital created!"

building1 = Building.new(
  :name => "Hotel",
)
building1.save!
p "pnj Hotel created!"

building1 = Building.new(
  :name => "Caserne",
)
building1.save!
p "pnj Caserne created!"

building1 = Building.new(
  :name => "Magasin",
)
building1.save!
p "pnj Magasin created!"

building1 = Building.new(
  :name => "Bar",
)
building1.save!
p "pnj Bar created!"
