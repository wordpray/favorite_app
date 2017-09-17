class LinksController < ApplicationController

  def new
    @user = current_user
    @link = Link.new
    @list = List.new
    @links = @list.links.new
    @lists = @user.lists
  end

  def create
    @user = current_user
    @link = @user.links.new(link_params)
    if @link.save
      redirect_to root_url
    else
      render action: "new"
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def link_params
    params.require(:link).permit(:title, :url, :list_id)
  end

end
