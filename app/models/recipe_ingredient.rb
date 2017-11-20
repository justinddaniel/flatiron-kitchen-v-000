class RecipeIngredient < ActiveRecord::Base
  belongs_to :recipe, :ingredient
end
