class PnjsController < ApplicationController

  def index
    @party = Party.find(params[:party_id])
    @pnjs = Pnj.all
  end

  def show
    @pnj = Pnj.find(params[:id])
  end

  def new
    @pnj = Pnj.new
  end

  def create
    @pnj = Pnj.new(pnj_params)
    if @pnj.save
      redirect_to pnjs_path
    else
      render :new
    end
  end

  private

  def pnj_params
    params.require(:pnj).permit(:name, :lvl, :status, :job_id, :architecture_id, :party_id)
  end


end
