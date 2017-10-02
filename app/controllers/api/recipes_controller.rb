class Api::RecipesController < ApplicationController
    before_action :set_recipe only: [:show, :update, :destroy]

    def index
      render json: Recipe.all
    end

    def show
      render json: @recipe
    end

    def create
      @recipe = Recipe.new(recipe_params)
      if @recipe.save
        render json: @recipe
      else
        render json: {message: @recipe.errors}, status: 400
      end
    end

    def update
      if @recipe.update(recipe_params)
        render json: @recipe
      else
        render json: {message: @recipe.errors}, status: 400
      end
    end

    def destroy
      if @recipe.destroy
        render status: 204
      else
        render json: {message: "Unable to remove this recipe"}, status: 400
      end
    end


    private

    def set_recipe
      @recipe = Recipe.find(params[:id])
    end

    def(recipe_params)
      params.require(:recipe).permit(:name, :ingredients, :directions, :cook_time)
    end
end
