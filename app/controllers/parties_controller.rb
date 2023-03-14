class PartiesController < ApplicationController
  def index
    @party = Party.all
  end

  def show
    @party = Party.find(params[:id])

    @needs_maze_generation = !@party.maps.all? { |map| map.content.present? }
    @map_ids = @party.maps
  end

  def new
    @party = Party.new
    @players = @party.players
    @races = Race.pluck(:name).uniq
  end

  def create
    @party = Party.new(party_params)
    @party.name = party_params[:name]
    @party.user_id = current_user.id
    @universe = Universe.find_by_id(@party.universe_id)

    create_maps(@party)
    @party.universe_id = @universe.id
    @party.universe_id = party_params[:universe_id]
    @universe.id = @party.universe_id

    if @party.save!
      redirect_to party_path(@party), notice: 'Successfully created a party.'
    else
      render :new
    end
  end

  def destroy
    @party = Party.find(params[:id])
    @party.destroy
  end

  def create_maps(party)
    @city_map = Map.new
    @city_map.party = party
    @city_map.name = "Carte du monde"
    @city_map.save!

    if party.city_1_name.present? && party.city_1_size.present?
      @city_map_1 = Map.new
      @city_map_1.party = party
      @city_map_1.name = party.city_1_name
      @city_map_1.save!
    end

    if party.city_2_name.present? && party.city_2_size.present?
      @city_map_2 = Map.new
      @city_map_2.party = party
      @city_map_2.name = party.city_2_name
      @city_map_2.save!
    end
  end

  private

  def party_params
    params.require(:party).permit(:name, :bible, :universe_id, :user_id, :player_1, :player_2, :player_3, :player_4, :player_5, :player_6, :player_7, :player_8, :player_9, :player_10, :party_size, :geography_1, :geography_2, :city_1_name, :city_1_size, :city_1_building_1, :city_1_building_2, :city_2_name, :city_2_size, :city_2_building_1, :city_2_building_2 , :mythical_creature_1_name, :mythical_creature_2_name, races: [])
  end
end
