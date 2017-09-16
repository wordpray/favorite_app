class ListsController < ApplicationController
  def index
    @lists = List.all
  end
  
  def new
    @list = List.new
  end

  def show
    @list  = List.find(params[:id])
    @links = @list.links
  end

  def create
    @list = current_user.lists.new(list_params)
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

  def search
  end

  def recommend
  end

private

  def list_params
    params.require(:list).permit(:title)
  end
end
