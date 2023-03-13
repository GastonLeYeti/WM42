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
    @geography = []
  end

  def create
    @party = Party.new(party_params)
    @party.name = party_params[:name]
    @party.user_id = current_user.id
    @universe = Universe.find_by_id(@party.universe_id)
    # @party.universe_id = @universe.id
    # @party.universe_type = party_params[:universe_id]
    # @universe.id = @party.universe_idq
    if @party.save!
      redirect_to party_path(@party), notice: 'Successfully created a party.'
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
    params.require(:party).permit(:name, :bible, :universe_id, :user_id)
  end

end
