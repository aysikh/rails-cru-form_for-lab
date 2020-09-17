class GenresController < ApplicationController

  def index
    @genres = Genre.all
  end
  
  def show
    id = params[:id]
    @genres = Genre.find(id)
  end

  def new
    @genres = Genre.new
  end

  def update
  end

  def create
    name = params["genre"]["name"]
      genre = Genre.create(name: name)
      redirect_to genre_path(genre)
  end

end
