puts "Destroying all parks..."
Park.destroy_all
Power.destroy_all

puts 'Creating powers...'
20.times do
  Power.create!(
    name: Faker::Superhero.unique.power
  )
end
puts "... created #{Power.count} powers."

puts "Creating all parks..."
happy_land = Park.create!(
  name: 'Happy Dinosaur Land',
  banner_url: 'https://www.collectjurassic.com/wp-content/uploads/2020/08/Jurassic_World_Camp_Cretaceous_McDonalds_Happy_Meals_Toys_Kids_Meal_FTR.jpg'
)

Park.create!(
  name: "Jurassic Park",
  banner_url: "https://pmcdeadline2.files.wordpress.com/2017/01/jurassicpark.jpg?crop=5px%2C92px%2C1138px%2C638px&resize=681%2C383"
)

Park.create!(
  name: "Jurassic World",
  banner_url: "https://universalnews.org/wp-content/uploads/2020/04/jurassic-world-3.jpg"
)

Dinosaur.create!(
  name: "Joseasaurus",
  image_url: 'https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/v1618627703/exryfur10yoitc6uvdc2.jpg',
  park: happy_land
)

Dinosaur.create!(
  name: "Ryansaurus-Rex",
  image_url: 'https://cdn.drawception.com/images/panels/2013/11-18/zaehRQ7zM4-6.png',
  park: happy_land
)

Dinosaur.create!(
  name: "Bradysaurus",
  image_url: 'https://media.newyorker.com/photos/590969662179605b11ad691a/master/pass/Batuman-brontosaurus.jpg',
  park: happy_land
)

Dinosaur.create!(
  name: "Emidactyl",
  image_url: 'https://www.liveabout.com/thmb/bgYFcFydYvJaBmREuhuL41IOYgA=/4173x3130/smart/filters:no_upscale()/pteranodon-bird-flying-above-ocean--594380947-599759f3054ad90011f67d40.jpg',
  park: happy_land
)

Dinosaur.create!(
  name: "Allosaurus",
  image_url: 'https://store.starace.com.hk/image/cache/catalog/starace%20products/Allosaurus/Featured-800x800.jpg',
  park: happy_land
)

Dinosaur.create!(
  name: "Abdulodon",
  image_url: 'https://static.wikia.nocookie.net/isle/images/2/29/The_isle_pteranodon_new_2020.jpeg/revision/latest?cb=20200825030749',
  park: happy_land
)

Dinosaur.create!(
  name: "Velocilena",
  image_url: 'https://static.turbosquid.com/Preview/001317/553/85/_600.jpg',
  park: happy_land
)

puts "...Created #{Park.count} parks"
