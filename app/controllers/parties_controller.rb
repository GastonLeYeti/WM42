class PartiesController < ApplicationController

  def index
    @party = Party.all
  end

  def show
    @party = Party.find(params[:id])
  end

  def new
    @party = Party.new
    @players = @party.players
    @races = Race.pluck(:name).uniq
  end

  def create
    @party = Party.new(party_params)
    @party.user_id = current_user.id
    @party.name = party_params[:name]
    if @party.save
      redirect_to @party, notice: 'Successfully created a party.'
    else
      render :new
    end
  end

  def maps

  end

  def destroy
    @party = Party.find(params[:id])
    @party.destroy
  end

  private

  def party_params
    params.require(:party).permit(:name, :bible, :universe_id, :user_id, :player_name_1, :player_name_2, :player_1, :player_2, :player_3, :player_4, :player_5, :player_6, :player_7, :player_8, :player_9, :player_10, :party_size, :race_1_name, :race_2_name, :race_3_name, :universe_type, :geography_1, :geography_2, :city_1_name, :city_1_size, :city_1_building_1, :city_1_building_2, :city_2_name, :city_2_size, :city_2_building_1, :city_2_building_2, :mythical_creature_1_name, :mythical_creature_2_name)
  end
end
