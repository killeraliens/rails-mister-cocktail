
puts "starting seed.."

url = "https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list"
ingred = open(url).read
ingredients = JSON.parse(ingred)
puts ingredients[0]
# 10.times do
#   Ingredient.create()

puts "ending seed"
