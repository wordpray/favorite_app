class FavoritesController < ApplicationController
  def home
    @lists = List.all
  end

  def about
  end

  def contact
  end
end
