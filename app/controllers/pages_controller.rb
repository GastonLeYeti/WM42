class PagesController < ApplicationController

  skip_before_action :authenticate_user!, only: :home
  
  def home
  end

  def parties
    @parties = Party.all
  end

  def players
    @players = Player.all
  end

  def weapons
    @weapons = Weapon.all
  end

  def maps
    @maps = Map.all
  end

  def pnjs
    @pnjs = Pnj.all
  end


end
