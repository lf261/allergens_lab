class Recipe < ApplicationRecord
    belongs_to :user
    has_many :recipe_ingredients
    has_many :ingredients, through: :recipe_ingredients

    def self.sort_by_number_of_ingredents
        sorted_recipes = Recipe.all.sort_by do |recipe|
            recipe.ingredients.count
        end

        return sorted_recipes.reverse
    end
end
