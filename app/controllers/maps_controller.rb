class MapsController < ApplicationController

  def index
    @party = Party.find(params[:party_id])
    @maps = Map.all
  end

  def show
    @map = Map.find(params[:id])
  end

  private

  def map_params
    params.require(:map).permit(:name, :description, :universe_id)
  end
end
