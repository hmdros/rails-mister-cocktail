class ReviewsController < ApplicationController
  before_action :set_cocktail, only: %i[create]
  before_action :set_ingredients, only: %i[create]

  def create
    @review = Review.new(review_params)
    @review.cocktail = @cocktail

    if @review.save
      redirect_to @cocktail
    else
      @dose = Dose.new
      render 'cocktails/show'
    end
  end

  private

  def set_ingredients
    @ingredients = Ingredient.all
  end

  def set_cocktail
    @cocktail = Cocktail.find(params[:cocktail_id])
  end

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
