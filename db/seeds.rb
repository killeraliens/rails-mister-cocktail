require "open-uri"
require "json"

puts "starting seed.."
Ingredient.destroy_all
Cocktail.destroy_all
Dose.destroy_all


url = "https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list"
ingred = open(url).read
ingredients = JSON.parse(ingred)

ingredients["drinks"].each do |o|
  name = o["strIngredient1"]
  Ingredient.create(name: name )
end

10.times do
  cocktail = Cocktail.create(name: Faker::Games::Pokemon.name)
  5.times do
    offset = rand(Ingredient.count)
    rand_ingred = Ingredient.offset(offset).first
    Dose.create(description: Faker::Food.measurement, cocktail: cocktail, ingredient: rand_ingred)
  end
end


puts "ending seed"

