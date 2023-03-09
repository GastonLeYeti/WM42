class PartiesController < ApplicationController
  def show
    @party = Party.find(params[:id])
  end

  def new
    @party = Party.new
  end

  def create
  end

  def destroy
  end
end
