class CategoriesController < ApplicationController
  def new
    @user = current_user
    @category = @user.categories.new
  end

  def create
    @user = current_user
    @category = @user.categories.new(category_params)
    if @category.save
      redirect_to root_url
    else
      render action: "new"
    end
  end

  def edit
  end

  def destroy
  end

  def update
  end

  def destroy
  end

  private

  def category_params
    params.require(:category).permit(:title)
  end

end
