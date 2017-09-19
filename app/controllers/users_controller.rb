class UsersController < ApplicationController
  before_action :authenticate_user!, except: :show

  def show
    @user = User.find(params[:id])
    @categories = @user.categories.order('title ASC')
  end
end
