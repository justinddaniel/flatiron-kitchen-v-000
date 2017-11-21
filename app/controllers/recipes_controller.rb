class RecipesController < ApplicationController
  def new
    @recipe = Recipe.new
  end

  def index
    @recipe = recipe.all
  end

  def show
    @recipes = Recipe.find(params[:id])
  end

  def create
    @recipe = Recipe.new(recipe_params)
    if @recipe.save
      redirect_to @recipe
    else
      render 'new'
    end
  end

  def edit
    @ingredient = Ingredient.find(params[:id])
  end

  def update
    @ingredient = Ingredient.find(params[:id])
    @ingredient.update(ingredient_params)
    redirect_to ingredient_path(@ingredient)
  end

  private

  def ingredient_params
    params.require(:ingredient).permit(:name)
  end
end
