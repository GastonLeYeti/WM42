class PartiesController < ApplicationController
  def show
    @party = Party.find(params[:id])
  end

  def new
    @party = Party.new
  end

  def create
    @party = Party.new(party_params)
    if @party.save
      redirect_to @party, notice: 'Successfully created a party.'
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
    params.require(:party).permit(:user_id, :name, :universe_id, :bible)
  end
end
