
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
