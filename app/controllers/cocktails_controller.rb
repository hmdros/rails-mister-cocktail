class CocktailsController < ApplicationController
  before_action :find_cocktail, only: [:show, :edit, :update, :destroy]
  def index
    @cocktails = Cocktail.all
  end

  def show; end

  def new
    @cocktail = Cocktail.new
  end

  def create
    @cocktail = Cocktail.new(cocktail_params)
    if @cocktail.save
      redirect_to @cocktail
    else
      render :new
    end
  end

  def edit; end

  def update
    @cocktail.update(cocktail_params)
    redirect_to @cocktail
  end

  def destroy
    @cocktail.destroy
    redirect_to @cocktails
  end

  private

  def find_cocktail
    @cocktail = Cocktail.find(params[:id])
  end

  def cocktail_params
    params.require(:cocktail).permit(:name, :photo)
  end
end
