# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Creating ingredients...'
rum = Ingredient.create!(name: "rum")
soda = Ingredient.create!(name: "soda")
sugar = Ingredient.create!(name: "sugar")
lime = Ingredient.create!(name: "lime")
ice = Ingredient.create!(name: "ice")
mint = Ingredient.create!(name: "mint leaves")
vodka = Ingredient.create!(name: "vodka")
ginger_beer = Ingredient.create!(name: "ginger beer")
puts 'Finished!'

cocktails = ["Mojito", "Moscow Mule",]

puts 'Creating cocktails...'
cocktails.each do |cocktail|
  Cocktail.create!(name: cocktail)
end
puts 'Finished!'

mojito = Cocktail.first
dose1 = Dose.new(description: "1 pinch", cocktail: mojito, ingredient: mint)
dose2 = Dose.new(description: "1 shot", cocktail: mojito, ingredient: rum)
dose3 = Dose.new(description: "1 tablespoon", cocktail: mojito, ingredient: sugar)
dose4 = Dose.new(description: "1 tablespoon", cocktail: mojito, ingredient: lime)
dose5 = Dose.new(description: "1/2 cup", cocktail: mojito, ingredient: soda)
dose6 = Dose.new(description: "1/2 cup", cocktail: mojito, ingredient: ice)
dose1.save!
dose2.save!
dose3.save!
dose4.save!
dose5.save!
dose6.save!

moscow_mule = Cocktail.last
dose7 = Dose.new(description: "1 shot", cocktail: moscow_mule, ingredient: vodka)
dose8 = Dose.new(description: "1 wedge", cocktail: moscow_mule, ingredient: lime)
dose9 = Dose.new(description: "1/2 cup", cocktail: moscow_mule, ingredient: ice)
dose10 = Dose.new(description: "1/2 cup", cocktail: moscow_mule, ingredient: ginger_beer)
dose7.save!
dose8.save!
dose9.save!
dose10.save!
