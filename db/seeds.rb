# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
user = User.find_or_initialize_by(email: 'nyerekatech@gmail.com')
user.fullname = 'NyerekaTech'
user.phonenumber = '0788720876'
user.gender = 'male'
user.province = 'kigali city'
user.district = 'gasabo'
user.password = 'nyerekatech@1234567890'
user.user_role = 'admin'
user.save!