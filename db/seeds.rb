# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

#user
10.times do
  walker = User.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name , bio: Faker::Yoda.quote, username: Faker::HarryPotter.character)
end

#photo
10.times do
  terry = Photo.create( location: Faker::GameOfThrones.city, title: Faker::GameOfThrones.character,  caption: Faker::Yoda.quote, image: Faker::HarryPotter.character, user_id: rand(1..10))
end

10.times do
  berry = Comment.create(photo_id: rand(1..10), text: Faker::StarWars.quote)
end

  Tag.create(keyword: "Cool")
  Tag.create(keyword: "Nice")
  Tag.create(keyword: "Sweet")
  Tag.create(keyword: "Legit")


5.times do
  photo_tag = PhotoTag.create(tag_id: rand(1..4), photo_id: rand(1..10))
end
