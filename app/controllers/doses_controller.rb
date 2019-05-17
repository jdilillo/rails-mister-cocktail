class DosesController < ApplicationController

  def new
    @dose = Dose.new
    @ingredient = Ingredient.new
    @cocktail = Cocktail.find(params['cocktail_id'])
  end

  def create
    @dose = Dose.create(dose_params)
    @cocktail = Cocktail.find(params['cocktail_id'])
    @dose.cocktail = @cocktail
    if @dose.save
    redirect_to cocktail_path(@cocktail)
    else
    render :new
    end
  end

  def show
  end

  def edit
    @dose = Dose.find(params['id'])
    @cocktail = Cocktail.find(params['cocktail_id'])
  end

  def update
    @dose = Dose.find(params['id'])
    @cocktail = Cocktail.find(params['cocktail_id'])

    if @dose.update(dose_params)
      redirect_to cocktail_path(@cocktail)
    else
      render :edit
    end
  end

  def destroy
    @dose = Dose.find(params['id'])
    @dose.destroy
  end

  private

  def dose_params
    params.require('dose').permit('amount', 'description', 'ingredient_id')
  end

end
