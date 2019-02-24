class CocktailsController < ApplicationController
  def index
    @cocktails = Cocktail.all
    @cocktails = Cocktail.search(params[:term])
  end

  def show
    @cocktail = Cocktail.find(params[:id])
  end

  def update
    @cocktail = Cocktail.find(params[:id])
    @cocktail.image = params[:cocktail][:image]
    @cocktail.save
  end

  def new
    @cocktail = Cocktail.new
  end

  def create
    @cocktail = Cocktail.new(cocktail_params)
    if @cocktail.save
      redirect_to cocktails_path #, notice: 'new cocktail saved'
    else
      render :new
    end
  end

  private

  def cocktail_params
    params.require(:cocktail).permit(:name, :image, :term)
  end
end
