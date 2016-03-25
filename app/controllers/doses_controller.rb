class DosesController < ApplicationController

  before_action :find_cocktail, only: [:new, :create, :destroy]

  def new
    @dose = Dose.new

  end

  def destroy
    find_dose
    @dose.destroy

    redirect_to cocktail_path
  end

  def create
    @dose = @cocktail.doses.new(doses_params)
    if @dose.save
      redirect_to cocktail_path(@cocktail)
    else
      render :new
    end
  end

private
  def doses_params
    params.require(:dose).permit(:description, :ingredient_id)
  end

  def find_cocktail
    @cocktail = Cocktail.find(params[:cocktail_id])
  end

  def find_dose
    @dose = @cocktail.doses.find(params[:id])
  end
end
