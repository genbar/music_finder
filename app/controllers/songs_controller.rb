class SongsController < ApplicationController
  def index
    @songs = Song.all
  end

  def show
    @song = Song.find(params[:id])
  end

  def new
    @song = Song.new
  end

  def create
    @song = Song.new
    @song.artist_id = params[:artist_id]
    @song.name = params[:name]
    @song.image_url = params[:image_url]

    if @song.save
      redirect_to songs_url, :notice => "Song created successfully."
    else
      render 'new'
    end
  end

  def edit
    @song = Song.find(params[:id])
  end

  def update
    @song = Song.find(params[:id])

    @song.artist_id = params[:artist_id]
    @song.name = params[:name]
    @song.image_url = params[:image_url]

    if @song.save
      redirect_to song_url(@song.id), :notice => "Song updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @song = Song.find(params[:id])

    @song.destroy

    redirect_to songs_url, :notice => "Song deleted."
  end
end
