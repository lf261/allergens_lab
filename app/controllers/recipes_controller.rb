class RecipesController < ApplicationController

    def index
        @recipes = Recipe.all
    end

    def new
        @recipe = Recipe.new
    end

    def create
        @recipe = Recipe.create(strong_params)

        redirect_to recipes_path
    end

    private

    def strong_params
        params.require(:recipe).permit(:name, :user_id)
    end
end
