class IngredientsController < ApplicationController
  def new
    @ingredient = Ingredient.new
  end

  def index 
    @ingredients = Ingredient.all 
  end

  def show
    @ingredient = Ingredient.find(params[:id])
  end

  def create 
  end

  def edit
  end

  private

  def ingredient_params
    params.require(:ingredient).permit(:name)
  end
end
