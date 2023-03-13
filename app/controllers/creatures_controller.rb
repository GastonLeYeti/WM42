class CreaturesController < ApplicationController

  def index
    @creatures = Creature.all
    @party = Party.find(params[:party_id])
  end

  def show
    @creature = Creature.find(params[:id])
  end

  private

  def creature_params
    params.require(:creature).permit(:name, :description, :lvl, :universe_id)
  end

end
