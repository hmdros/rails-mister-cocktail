class DosesController < ApplicationController
  before_action :set_dose, only: %i[destroy]
  before_action :set_cocktail, only: %i[create]
  before_action :set_ingredients, only: %i[create]

  def create
    @dose = Dose.new(doses_params)
    @dose.cocktail = @cocktail

    if @dose.save
      redirect_to @cocktail
    else
      @review = Review.new
      render 'cocktails/show'
    end
  end

  def destroy
    @dose.destroy

    redirect_to @dose.cocktail
  end

  private

  def set_ingredients
    @ingredients = Ingredient.all
  end

  def set_dose
    @dose = Dose.find(params[:id])
  end

  def set_cocktail
    @cocktail = Cocktail.find(params[:cocktail_id])
  end

  def doses_params
    params.require(:dose).permit(:description, :ingredient_id)
  end
end
