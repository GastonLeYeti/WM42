class CitiesController < ApplicationController

  def index
    @map = Map.find(params[:map_id])
    @party = Party.find(params[:party_id])
    @cities = City.all
  end

  def show
    @city = City.find(params[:id])
  end

  def new
    @city = City.new
  end

  def create
    @city = City.new(city_params)
    @city.name = @party.name
    @city.party_id = current_party.id
    @city.map_id = current_party.map_id
    @city.save!
    @city.create_tiles
    if @city.save!
      redirect_to party_city_path(@city), notice: 'Successfully created a city.'
    else
      render :new
    end
  end

  def update
    @city = City.find(params[:id])

    if @city.update(content: params[:content])
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

  def city_params
    params.require(:city).permit(:name, :content, :map_id)
    # params.require(:map).permit(:name, :description, :universe_id)
  end
end
