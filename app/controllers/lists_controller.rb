class ListsController < ApplicationController
  def index
    @lists = List.all
  end
  
  def new
    @user = current_user
    @list = List.new
    @categories = @user.categories
  end

  def show
    @list  = List.find(params[:id])
    @links = @list.links
  end

  def create
    @user = current_user
    @list = @user.lists.new(list_params)
    if @list.save
      redirect_to root_url
    else
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
