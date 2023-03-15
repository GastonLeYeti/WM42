class PartiesController < ApplicationController

  # require 'openai'

  def index
    @party = Party.all
  end

  def show
    @party = Party.find(params[:id])

    @needs_maze_generation = !@party.maps.all? { |map| map.content.present? } && !@party.cities.all? { |city| city.content.present? }
    @map_ids = @party.maps
    @city_ids = @party.cities
  end

  def new
    @party = Party.new
    @players = @party.players
    @races = Race.pluck(:name).uniq
    @myth_creatures = Creature.where(lvl: 42).pluck(:name)
  end

  def create
    @party = Party.new(party_params)
    @party.name = party_params[:name]
    @party.user_id = current_user.id
    @universe = Universe.find_by_id(@party.universe_id)

    # @party.universe_id = @universe.id
    @party.universe_id = party_params[:universe_id]
    @universe.id = @party.universe_id

    generate_bible(@party)

    if @party.party_size == "petite"
      party_generator_sized = 10
    elsif @party.party_size == "moyenne"
      party_generator_sized = 30
    elsif @party.party_size == "grande"
      party_generator_sized = 50
    else
      party_generator_sized = 50
    end

    if @party.save!
      create_maps(@party)
      Weapon.generate_weapons(@party, party_generator_sized)
      redirect_to party_path(@party), notice: 'Successfully created a party.'
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @party = Party.find(params[:id])
    @party.destroy
  end

  def create_maps(party)
    @city_map = Map.new
    @city_map.party = party
    @city_map.name = party.name
    @city_map.save!

    if party.city_1_name.present? && party.city_1_size.present?
      @city_map_1 = City.new
      @city_map_1.map = @city_map
      @city_map_1.name = party.city_1_name
      @city_map_1.save!
    end

    if party.city_2_name.present? && party.city_2_size.present?
      @city_map_2 = City.new
      @city_map_2.map = @city_map
      @city_map_2.name = party.city_2_name
      @city_map_2.save!
    end
  end

  private

  def party_params
    params.require(:party).permit(:name, :bible, :universe_id, :user_id, :player_1, :player_2, :player_3, :player_4, :player_5, :player_6, :player_7, :player_8, :player_9, :player_10, :party_size, :geography_1, :geography_2, :city_1_name, :city_1_size, :city_1_building_1, :city_1_building_2, :city_2_name, :city_2_size, :city_2_building_1, :city_2_building_2 , creatures: [], races: [])
  end


  def generate_bible(party)


    token = ENV['OPENAI_API_KEY']
    client = OpenAI::Client.new(access_token: token)
    p prompt = "
    Pourrais tu me décrire en huit paragraphes une introduction pour une partie de JDR à un monde qui s'appel #{party.name} ?
    Il est composer de #{party.races}
    La géographie de la carte est composé de #{party.geography_1} et #{party.geography_2}

    Please write in humorous tone, narrative writing style, French language.
    "
    # Les joureurs s'appels #{party.player_1}, #{party.player_2}, #{party.player_3}, #{party.player_4}, #{party.player_5}, #{party.player_6}, #{party.player_7}, #{party.player_8}, #{party.player_9}, #{party.player_10}

    # response = client.completions(
    #   parameters: {
    #     model: "text-davinci-003",
    #     prompt: prompt,
    #     max_tokens: 3500
    #   })

    # reponse_full = response.parsed_response["choices"][0]["text"]

    # paragraphes = reponse_full.split("\n\n") # Sépare les paragraphes

    # nouveaux_paragraphes = [] # Crée un tableau vide
    # nouveaux_paragraphes << paragraphes.shift # Ajoute le premier paragraphe sans <br>

    # paragraphes.each do |paragraphe| # Pour chaque paragraphe
    #   nouveaux_paragraphes << "<br><br>#{paragraphe}" # Ajoute les paragraphes avec <br>
    # end

    # nouvelle_reponse = nouveaux_paragraphes.join # Rejoint les paragraphes

    # party.bible = nouvelle_reponse

     party.bible = "wlh téma la bibel"


  end
end
