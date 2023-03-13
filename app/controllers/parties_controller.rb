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
    @party.name = party_params[:name]
    @party.user_id = current_user.id
    @universe = Universe.find_by_id(@party.universe_id)
    # @party.universe_id = @universe.id
    # @party.universe_type = party_params[:universe_id]
    # @universe.id = @party.universe_id
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

  private

  def party_params
    params.require(:party).permit(:name, :bible, :universe_id, :user_id, races: [])
  end
end

# t.bigint "user_id", null: false
#     t.string "name"
#     t.bigint "universe_id", null: false
#     t.datetime "created_at", null: false
#     t.datetime "updated_at", null: false
#     t.text "bible", default: " "
# -----
#     t.string "player_1"
#     t.string "player_2"
#     t.string "player_3"
#     t.string "player_4"
#     t.string "player_5"
#     t.string "player_6"
#     t.string "player_7"
#     t.string "player_8"
#     t.string "player_9"
#     t.string "player_10"
#     t.integer "party_size"
#     t.string "geography_1"
#     t.string "geography_2"
#     t.string "city_1_name"
#     t.integer "city_1_size"
#     t.string "city_1_building_1"
#     t.string "city_1_building_2"
#     t.string "city_2_name"
#     t.integer "city_2_size"
#     t.string "city_2_building_1"
#     t.string "city_2_building_2"
#     t.string "mythical_creature_1_name"
#     t.string "mythical_creature_2_name"
#     t.text "races", default: [], array: true
