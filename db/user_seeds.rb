require "open-uri"

photo_Niko = URI.open("https://res.cloudinary.com/dlixoduzo/image/upload/v1678197602/hzgmkz7uahqpqisbxbgf.jpg")
photo_Loulou = URI.open("https://res.cloudinary.com/dlixoduzo/image/upload/v1678198070/ibmdxmdsgglpzq1hym7j.jpg")
photo_Max = URI.open("https://res.cloudinary.com/dlixoduzo/image/upload/v1678197991/gxoaocfucyiotoc4l3cn.jpg")
photo_Gaston = URI.open("https://res.cloudinary.com/dlixoduzo/image/upload/v1678196995/r8ib3orhcge9pc4ipnyg.jpg")
photo_Admin = URI.open("https://res.cloudinary.com/dlixoduzo/image/upload/v1678200826/Gaston_LeYeti_loutre_qui_joue_de_lhamonica_39c2c097-b838-4000-b89b-72c8da453b71_ngkmyz.png")

p "#############################################"
p "#############################################"
p "USER SEEDS"
p "#############################################"
p "#############################################"


# kill all existing data
p "Destroying all users ..."
User.destroy_all

p "Creating users..."

userNiko = User.new(
  :email                 => "niko@test.com",
  :password              => "123456",
  :password_confirmation => "123456",
  :username              => "Niko",
)
userNiko.avatar.attach(io: photo_Niko, filename: 'photo de Niko', content_type: 'image/jpg')
userNiko.save!
p "user Niko created!"

userLoulou = User.new(
  :email                 => "loulou@test.com",
  :password              => "123456",
  :password_confirmation => "123456",
  :username              => "Louise",
)
userLoulou.avatar.attach(io: photo_Loulou, filename: 'photo de Louise', content_type: 'image/jpg')
userLoulou.save!
p "user Loulou created!"

userMax = User.new(
  :email                 => "max@test.com",
  :password              => "123456",
  :password_confirmation => "123456",
  :username              => "Max",
)
userMax.avatar.attach(io: photo_Max, filename: 'photo de Max', content_type: 'image/jpg')
userMax.save!
p "user Max created!"

userGaston = User.new(
  :email                 => "gaston@test.com",
  :password              => "123456",
  :password_confirmation => "123456",
  :username              => "Gaston",
)
userGaston.avatar.attach(io: photo_Gaston, filename: 'photo de Gaston', content_type: 'image/jpg')
userGaston.save!
p "user Gaston created!"

userAdmin = User.new(
  :email                 => "admin@test.com",
  :password              => "123456",
  :password_confirmation => "123456",
  :username              => "admin_root"
)
userAdmin.avatar.attach(io: photo_Admin, filename: 'photo de Admin', content_type: 'image/jpg')
userAdmin.save!
p "user Admin created!"

p "Finished! #{User.count} users created!"
