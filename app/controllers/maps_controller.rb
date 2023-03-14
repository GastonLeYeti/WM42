class MapsController < ApplicationController
  skip_before_action :verify_authenticity_token, only: :update

  def index
    @party = Party.find(params[:party_id])
    @maps = Map.all
  end

  def show
    @map = Map.find(params[:id])
  end

  def new
    @map = Map.new
  end

  def create
    @map = Map.new(map_params)
    @map.name = @party.name
    @map.party_id = current_party.id
    @map.universe_id = current_party.universe_id
    @map.save!
    @map.create_tiles
    if @map.save!
      redirect_to party_map_path(@map), notice: 'Successfully created a map.'
    else
      render :new
    end
  end

  def update
    @map = Map.find(params[:id])

    if @map.update(content: params[:content])
      respond_to do |format|
        format.html
        format.json { render json: { success: true } }
      end
    else
      respond_to do |format|
        format.html
        format.json { render json: { success: false } }
      end
    end
  end


  private

  def map_params
    params.require(:map).permit(:name, :content, :universe_id)
    # params.require(:map).permit(:name, :description, :universe_id)
  end
end
