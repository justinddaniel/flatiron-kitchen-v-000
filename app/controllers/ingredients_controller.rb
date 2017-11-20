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
    @ingredient = Ingredient.new(ingredient_params)
    if @ingredient.save
      redirect_to @ingredient
    else
      render 'new'
    end
  end

  def edit
    @ingredient = Ingredient.find(params[:id])
  end

  private

  def ingredient_params
    params.require(:ingredient).permit(:name)
  end
end
