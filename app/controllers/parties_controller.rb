require 'openai'

class PartiesController < ApplicationController

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
    @party.universe_id = @universe.id
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
      Pnj.generate_pnjs(@party, party_generator_sized)
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
      @city_map_1.size = party.city_1_size
      @city_map_1.save!
    end

    if party.city_2_name.present? && party.city_2_size.present?
      @city_map_2 = City.new
      @city_map_2.map = @city_map
      @city_map_2.name = party.city_2_name
      @city_map_2.size = party.city_2_size
      @city_map_2.save!
    end
  end

  private

  def party_params
    params.require(:party).permit(:name, :bible, :universe_id, :user_id, :player_1, :player_2, :player_3, :player_4, :player_5, :player_6, :player_7, :player_8, :player_9, :player_10, :party_size, :city_1_name, :city_1_size, :city_1_building_1, :city_1_building_2, :city_2_name, :city_2_size, :city_2_building_1, :city_2_building_2, geography: [], creatures: [], races: [])
  end


  def generate_bible(party)

    party.bible = "wlh téma la bible"

    token = ENV['OPENAI_API_KEY']
    client = OpenAI::Client.new(access_token: token)
    prompt = "Je voudrais que tu rédiges une introduction détaillée et immersive pour une partie de jeu de rôle dans un monde appelé #{party.name}.
    Ce monde est habité par des #{party.races.join(', ')}.
    La géographie de la carte est principalement composée de #{party.geography[0]} #{(party.geography[1].present? ? "et de #{party.geography[1]}" : " ")}.

    Il y a une ville importante nommée #{party.city_1_name}.
    Tu dois détailler les bâtiments principaux de cette ville, qui sont #{party.city_1_building_1} et #{party.city_1_building_2}.
    #{(party.city_2_name.present? ? "Une seconde ville, #{party.city_2_name}, est également présente. " : "")}
    #{(party.city_2_name.present? ? "Tu dois détailler les bâtiments principaux de cette ville, qui sont #{party.city_2_building_1} et #{party.city_2_building_2}." : "")}

    Les joueurs présents dans cette aventure sont :
    #{(party.player_1.present? ? "#{party.player_1}" : "")}
    #{(party.player_2.present? ? ", #{party.player_2}" : "")}
    #{(party.player_3.present? ? ", #{party.player_3}" : "")}
    #{(party.player_4.present? ? ", #{party.player_4}" : "")}
    #{(party.player_5.present? ? ", #{party.player_5}" : "")}
    #{(party.player_6.present? ? " et #{party.player_6}." : ".") }

    Je souhaiterais que tu décrives les villes et les décors de manière détaillée, en ajoutant autant d'éléments intéressants que possible. L'introduction devrait comporter au minimum 8 paragraphes, sans les nommer explicitement.

    Rédiger le texte dans un style narratif, avec beaucoup d'humour en français."

    p prompt

    response = client.chat(
      parameters: {
        model: "gpt-3.5-turbo",
        messages: [{ role: "user", content: prompt }],
        temperature: 0.3,
      })

    p response

    reponse_full = response.dig("choices", 0, "message", "content")

    # on remplace dans la réponse les \n\n par des <br><br> pour que le texte soit bien affiché en html
    reponse_full = reponse_full.gsub("\n\n", "<br><br>")

    party.bible = reponse_full

  end
end
