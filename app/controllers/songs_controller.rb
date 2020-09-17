class SongsController < ApplicationController

  def index
    @songs = Song.all
  end

  def show
    id = params[:id]
    @songs = Song.find(id)
  end

  def new
    @songs = Song.new
  end

  def update
  end

  def create
    name = params["song"]["name"]
    artist_id = params["song"]["artist_id"]
    genre_id = params["song"]["genre_id"]
    song = Song.create(name: name, artist_id: artist_id, genre_id: genre_id)
      redirect_to song_path(song)
  end

end
