class RecipesController < ApplicationController
    def show
        @recipe = Recipe.find(params[:id])
    end
    def new
        @recipe = Recipe.new
    end
    def create
        items = params[:recipe]
        @recipe = Recipe.new(name: items[:name], description: items[:description], cuisine_id: items[:cuisine_id], recipe_type_id: items[:recipe_type_id] , preparation_method: items[:preparation_method], preparation_time: items[:preparation_time])
        if @recipe.save
            return redirect_to root_path
        else
            render :new
        end
    end
end