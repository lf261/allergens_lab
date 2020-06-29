# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Recipe.destroy_all 
Ingredient.destroy_all 
RecipeIngredient.destroy_all 
Allergy.destroy_all

20.times do |x| 
    User.create(name: Faker::Name.unique.name)
end 

30.times do |x|
    Recipe.create(name: Faker::Food.unique.dish, user_id: User.all.sample.id)
end 

20.times do |x|
    Ingredient.create({name: Faker::Food.unique.ingredient})
end 

75.times do |x|
    RecipeIngredient.create(recipe_id: Recipe.all.sample.id, ingredient_id: Ingredient.all.sample.id)
end

30.times do|x|
    Allergy.create(user_id: User.all.sample.id, ingredient_id: Ingredient.all.sample.id)
end