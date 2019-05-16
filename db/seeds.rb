puts 'Cleaning database...'
Cocktail.destroy_all
Ingredient.destroy_all

puts 'Creating Cocktails...'
Cocktail.create(name: 'Sazerac')
Cocktail.create(name: 'Tom Collins')
Cocktail.create(name: 'Mojito')
Cocktail.create(name: 'Gibson')
Cocktail.create(name: 'Old-Fashioned')

Ingredient.create(name: 'lemon')
Ingredient.create(name: 'ice')
Ingredient.create(name: 'mint leaves')
Ingredient.create(name: 'lime')
Ingredient.create(name: 'whiskey')
Ingredient.create(name: 'bourdon')

puts 'Finished!'
