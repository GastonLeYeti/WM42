class WeaponsController < ApplicationController
  def index
    @weapons = Weapon.all
    @party = Party.find(params[:party_id])
  end

  def show
    @weapon = Weapon.find(params[:id])
  end

  private

  def weapon_params
    params.require(:weapon).permit(:name, :description, :bonus, :bonus_type, :universe_id)
  end

end
