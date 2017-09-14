class ListsController < ApplicationController
  def new
    @list = List.new
  end

  def show
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
