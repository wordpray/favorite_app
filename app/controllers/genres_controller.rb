class GenresController < ApplicationController
  def show
    @lists = List.all
    @genre = Genre.find(params[:id])
  end
end
