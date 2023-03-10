class ArchitecturesController < ApplicationController

  def index
    @architectures = Architecture.all
  end

  def show
    @architecture = Architecture.find(params[:id])
  end

  def new
    @architecture = Architecture.new
  end

  def create
    @architecture = Architecture.new(architecture_params)
    if @architecture.save
      redirect_to architectures_path
    else
      render :new
    end
  end

  private

  def architecture_params
    params.require(:architecture).permit(:name, :description, :image)
  end

end
