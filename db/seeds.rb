require "open-uri"
require "json"

puts "starting seed.."
Ingredient.destroy_all

url = "https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list"
ingred = open(url).read
ingredients = JSON.parse(ingred)

ingredients["drinks"].each do |o|
  name = o["strIngredient1"]
  Ingredient.create(name: name )
end

puts "ending seed"
