class WeaponsController < ApplicationController



  def index
    @weapons = Weapon.all
  end

  def show
    @weapon = Weapon.find(params[:id])
  end

  def new
    @weapon = Weapon.new
  end

  def create
    @weapon = Weapon.new(params[:weapon])
    if @weapon.save
      redirect_to @weapon, :notice => "Successfully created weapon."
    else
      render :action => 'new'
    end
  end

  private

  def weapon_params
    params.require(:weapon).permit(:name, :level, :rarity, :price, :lootable, :description)
  end


end
