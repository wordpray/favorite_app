class FavoritesController < ApplicationController
  def home
    @user = current_user
    @categories = @user.categories.order('title ASC')
  end

  def about
  end

  def contact
  end
end
