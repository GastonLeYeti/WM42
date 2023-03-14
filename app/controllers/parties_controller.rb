class PartiesController < ApplicationController

  require 'openai'

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
    @myth_creatures = Creature.where(lvl: 42).pluck(:name)
  end

  def create
    party_params[:races].reject!(&:empty?)
    @party = Party.new(party_params)
    @party.name = party_params[:name]
    @party.user_id = current_user.id
    @universe = Universe.find_by_id(@party.universe_id)

    create_maps(@party.party_size)
    generate_bible(@party)
    # @party.universe_id = @universe.id
    # @party.universe_type = party_params[:universe_id]
    # @universe.id = @party.universe_idq

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

  def create_maps(size)
    # @party = Party.find(params[:id])
    # @map = Map.new
    # @map.size = size
    # @map.party_id = @party.id
    # @map.save!
    # @map.create_tiles
  end

  private

  def party_params
    params.require(:party).permit(:name, :bible, :universe_id, :user_id, :player_1, :player_2, :player_3, :player_4, :player_5, :player_6, :player_7, :player_8, :player_9, :player_10, :party_size, :geography_1, :geography_2, :city_1_name, :city_1_size, :city_1_building_1, :city_1_building_2, :city_2_name, :city_2_size, :city_2_building_1, :city_2_building_2 , creatures: [], races: [])
  end


  def generate_bible(party)
    # party.bible = "wlh téma la bibel"
    token = ENV['OPENAI_API_KEY']
    client = OpenAI::Client.new(access_token: token)
    p prompt = "
    Pourrais tu me décrire en huit paragraphes une introduction pour une partie de JDR à un monde qui s'appel #{party.name} ?
    Il est composer de #{party.races}
    La géographie est composé de #{party.geography_1} et #{party.geography_2}

    De façon romancé, un compte pour adulte, avec de la description dans les paysages et les villes
    "

    response = client.completions(
      parameters: {
        model: "text-davinci-003",
        prompt: prompt,
        max_tokens: 3500
      })

    p response.parsed_response["choices"][0]["text"]

    party.bible = response.parsed_response["choices"][0]["text"]
  end
end
