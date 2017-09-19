class CategoriesController < ApplicationController
  def new
    @user     = current_user
    @category = @user.categories.new
  end

  def show
    @user       = current_user
    @categories = @user.categories.order('title ASC')
    @category   = Category.find(params[:id])
    @lists      = @category.lists
    @first_list = @lists.first
  end

  def create
    @user     = current_user
    @category = @user.categories.new(category_params)

    #Createボタンをクリック
    if params[:commit]
      if @category.save
        redirect_to root_url
      else
        flash[:danger] = "Failed to create"
        render action: "new"
      end
    #Continue to createボタンをクリック
    elsif params[:next_button]
      if @category.save
        @category = @user.categories.new
        flash[:success] = "Successful creation"
        render action: "new"
      else
        flash[:danger] = "Failed to create"
        render action: "new"
      end
    else
      flash[:danger] = "Failed to create"
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
