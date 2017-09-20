class ListsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show, :search]

  def index
    @lists = List.all
    @genres = Genre.all
  end

  def new
    @user       = current_user
    @list       = List.new
    @categories = @user.categories
    @genres = Genre.all
  end

  def show
    @list       = List.find(params[:id])
    @links      = @list.links
    @category   = Category.find(@list.category_id)
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
        @categories = @user.categories
        render action: "new"
      end
    #Continue to createボタンをクリック
    elsif params[:next_button]
      if @list.save
        @list = List.new
        @categories = @user.categories
        flash[:success] = "Successful creation"
        render action: "new"
      else
        flash[:danger] = "Failed to create"
        @list = List.new
        @categories = @user.categories
        render action: "new"
      end
    else
      flash[:danger] = "Failed to create"
      @list = List.new
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
    params.require(:list).permit(:title, :description, :category_id, :genre_id)
  end
end
