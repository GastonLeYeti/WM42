class WeaponsController < ApplicationController

  require 'faker'

  def index
    @weapons = Weapon.all
    @party = Party.find(params[:party_id])
  end

  def new
    @weapon = Weapon.new
    # @meta_armories = Armory.where(universe: 'Meta')
    # @party_armories = Armory.where(universe: current_user.party.universe)
  end

  def create
    @weapon = Weapon.new
  end


  def show
    @weapon = Weapon.find(params[:id])
  end

  private

  def weapon_params
    params.require(:weapon).permit(:name, :level, :rarity, :price, :lootable, :party_id, :description, :armory_id)
  end

end
