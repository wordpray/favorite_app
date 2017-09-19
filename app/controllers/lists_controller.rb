class ListsController < ApplicationController
  def index
    @lists = List.all
  end

  def new
    @user = current_user
    @list = List.new
    @category = Category.find(params[:category_id])
    @categories = @user.categories
  end

  def show
    @user       = current_user
    @categories = @user.categories.order('title ASC')
    @category   = Category.find(params[:category_id])
    @lists      = @category.lists
    @list       = List.find(params[:id])
    @links      = @list.links
  end

  def create
    @user = current_user
    @list = @user.lists.new(list_params)

    #Createボタンをクリック
    if params[:commit]
      if @list.save
        redirect_to root_url
      else
        flash[:danger] = "Failed to create"
        @list = List.new
        @category = Category.find(params[:category_id])
        @categories = @user.categories
        render action: "new"
      end
    #Continue to createボタンをクリック
    elsif params[:next_button]
      if @list.save
        @list = List.new
        @category = Category.find(params[:category_id])
        @categories = @user.categories
        flash[:success] = "Successful creation"
        render action: "new"
      else
        flash[:danger] = "Failed to create"
        @list = List.new
        @category = Category.find(params[:category_id])
        @categories = @user.categories
        render action: "new"
      end
    else
      flash[:danger] = "Failed to create"
      @list = List.new
      @category = Category.find(params[:category_id])
      @categories = @user.categories
      render action: "new"
    end
  end

  def destroy
  end

  def edit
  end

  def update
  end

  def search
  end

private

  def list_params
    params.require(:list).permit(:title, :description, :category_id)
  end
end
