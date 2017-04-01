# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

paperclip = Rails.root + 'app' + 'assets' + 'images'

admin = User.create(name: 'Admin', email: 'admin@admin.com', password: 'qweqwe', password_confirmation: 'qweqwe', admin: true)

photo1 = Photo.create(name: "Honda civic", image:File.new(paperclip + "honda_civic.jpg"), user_id: 1)
photo2 = Photo.create(name: "BMW", image:File.new(paperclip + "bmw.jpg"), user_id: 1)
photo3 = Photo.create(name: "Lexus", image:File.new(paperclip + "lx570.jpg"), user_id: 1)