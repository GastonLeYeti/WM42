p "#############################################"
p "#############################################"
p "JOB SEEDS"
p "#############################################"
p "#############################################"

# kill all existing data
p "Destroying all jobs ..."
PNJ.destroy_all

p "Creating job..."

###############
p "General Job loading..."
###############

job1 = Job.new(
  :name => "Marchand",
  :weaponized => "false",
  :weapon_range => "cac",
  :universe_id => universePostApocalyptic,
)
job1.save!
p "pnj Marchand created!"

job2 = Job.new(
  :name => "Mage",
  :weaponized => "true",
  :weapon_range => "mid",
  :universe_id => universePostApocalyptic,
)
job2.save!
p "pnj Mage created!"

job3 = Job.new(
  :name => "Voleur",
  :weaponized => "true",
  :weapon_range => "long",
  :universe_id => universePostApocalyptic,
)
job3.save!
p "pnj Voleur created!"

job4 = Job.new(
  :name => "Espion",
  :weaponized => "true",
  :weapon_range => "mid",
  :universe_id => universePostApocalyptic,
)
job4.save!
p "pnj Espion created!"

job5 = Job.new(
  :name => "Prêtre",
  :weaponized => "false",
  :weapon_range => "cac",
  :universe_id => universePostApocalyptic,
)
job5.save!
p "pnj Prêtre created!"

job6 = Job.new(
  :name => "Barde",
  :weaponized  => "true",
  :weapon_range => "mid",
  :universe_id => universePostApocalyptic,
)
job6.save!
p "pnj Barde created!"

job7 = Job.new(
  :name => "Travailleur",
  :weaponized => "true",
  :weapon_range => "cac",
  :universe_id => universePostApocalyptic,
)
job7.save!
p "pnj Travailleur created!"

job8 = Job.new(
  :name => "Noble",
  :weaponized => "false",
  :weapon_range => "cac",
  :universe_id => universePostApocalyptic,
)
job8.save!
p "pnj Noble created!"

job9 = Job.new(
  :name => "Enquêteur",
  :weaponized => "true",
  :weapon_range => "long",
  :universe_id => universePostApocalyptic,
)
job9.save!
p "pnj Enquêteur created!"

job10 = Job.new(
  :name => "Mentor",
  :weaponized => "true",
  :weapon_range => "mid",
  :universe_id => universePostApocalyptic,
)
job10.save!
p "pnj Mentor created!"
