class FavoritesController < ApplicationController
  def home
    @user           = current_user
    @categories     = @user.categories.order('title ASC')
    @first_category = @categories.first
    @lists          = @first_category.lists
    @first_list     = @lists.first
  end

  def about
  end

  def contact
  end
end
