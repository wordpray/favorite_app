class FavoritesController < ApplicationController
  before_action :authenticate_user!, except: [:home, :about, :contact]

  def home
    if user_signed_in?
      @user           = current_user
      @categories     = @user.categories.order('title ASC')
      if @categories.present?
        @first_category = @categories.first
        @lists          = @first_category.lists
        @first_list     = @lists.first
      end
    else
    end
  end

  def about
  end

  def contact
  end
end
