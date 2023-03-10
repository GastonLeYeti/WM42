class PlayersController < ApplicationController

  def index
    @party = Party.find(params[:party_id])
    @players = Player.all
  end

  def show
    @player = Player.find(params[:id])
  end


  private

  def player_params
    params.require(:player).permit(:name, :lvl, :status, :job_id, :architecture_id, :party_id)
  end
  
end
