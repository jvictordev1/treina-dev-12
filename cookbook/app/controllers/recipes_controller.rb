class RecipesController < ApplicationController
    def show
        @recipe = Recipe.find(params[:id])
    end
    def new
        @recipe = Recipe.new
    end
    def create
        items = params[:recipe]
        @recipe = Recipe.new(name: items[:name], description: items[:description], cuisine_id: items[:cuisine_id], recipe_type_id: items[:recipe_type_id] , preparation_method: items[:preparation_method], preparation_time: items[:preparation_time], status: :draft)
        if @recipe.save
            return redirect_to root_path
        else
            render :new
        end
    end
    def edit
        @recipe = Recipe.find(params[:id])
    end
    def update
        @recipe = Recipe.find(params[:id])
        items = params[:recipe]

        if @recipe.update(name: items[:name], description: items[:description], cuisine_id: items[:cuisine_id], recipe_type_id: items[:recipe_type_id] , preparation_method: items[:preparation_method], preparation_time: items[:preparation_time], status: :draft)
            return redirect_to recipe_path(@recipe[:id])
        end

        render :edit
    end
    def destroy
        @recipe = Recipe.find(params[:id])
        @recipe.destroy
        redirect_to root_path
    end
    def drafts
        @recipes = Recipe.draft
    end
    def publish
        recipe = Recipe.find(params[:id])
        recipe.published!
        redirect_to root_path
    end
    def unpublish
        recipe = Recipe.find(params[:id])
        recipe.draft!
        redirect_to root_path
    end
end