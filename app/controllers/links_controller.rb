class LinksController < ApplicationController

  def new
    @user = current_user
    @link = Link.new
    @list = List.find(params[:list_id])
    @links = @list.links.new
    @lists = @user.lists
  end

  def create
    @user = current_user
    @link = @user.links.new(link_params)

    #Createボタンをクリック
    if params[:commit]
      if @link.save
        redirect_to root_url
      else
        flash[:danger] = "Failed to create"
        @link = Link.new
        @list = List.find(params[:list_id])
        @links = @list.links.new
        @lists = @user.lists
        render action: "new"
      end
    #Continue to createボタンをクリック
    elsif params[:next_button]
      if @link.save
        @link = Link.new
        @list = List.find(params[:list_id])
        @links = @list.links.new
        @lists = @user.lists
        flash[:success] = "Successful creation"
        render action: "new"
      else
        flash[:danger] = "Failed to create"
        @link = Link.new
        @list = List.find(params[:list_id])
        @links = @list.links.new
        @lists = @user.lists
        render action: "new"
      end
    else
      flash[:danger] = "Failed to create"
      @link = Link.new
      @list = List.find(params[:list_id])
      @links = @list.links.new
      @lists = @user.lists
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
