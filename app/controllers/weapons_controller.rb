class WeaponsController < ApplicationController
  def index
    @party = Party.find(params[:party_id])

    @weapons = Weapon.all
  end

  def show
    @weapon = Weapon.find(params[:id])
  end


  private

  def weapon_params
    params.require(:weapon).permit(:name, :description, :bonus, :bonus_type, :universe_id)
  end
end
