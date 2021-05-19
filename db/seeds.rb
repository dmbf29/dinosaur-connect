puts "Destroying all parks..."
Park.destroy_all

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

puts "...Created #{Park.count} parks"
