class RecipesController < ApplicationController

    def index
        if params['sort_by'] == 'ingredients'
            @recipes = Recipe.sort_by_number_of_ingredents
        else
            @recipes = Recipe.all
        end
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
