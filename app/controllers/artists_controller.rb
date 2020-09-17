class ArtistsController < ApplicationController

  def index
    @artists = Artist.all
  end

  def show
    id = params[:id]
    @artists = Artist.find(id)
  end

  def new
    @artists = Artist.new
  end

  def update
  end

  def create
    name = params["artist"]["name"]
    bio = params["artist"]["bio"]
      artist = Artist.create(name: name, bio: bio)
      redirect_to artist_path(artist)
  end
end
