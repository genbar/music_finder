class ArtistsController < ApplicationController
  def index
    @artists = Artist.all
  end

  def show
    @artist = Artist.find(params[:id])
  end

  def new
    @artist = Artist.new
  end

  def create
    @artist = Artist.new
    @artist.name = params[:name]
    @artist.image_url = params[:image_url]

    if @artist.save
      redirect_to artists_url, :notice => "Artist created successfully."
    else
      render 'new'
    end
  end

  def edit
    @artist = Artist.find(params[:id])
  end

  def update
    @artist = Artist.find(params[:id])

    @artist.name = params[:name]
    @artist.image_url = params[:image_url]

    if @artist.save
      redirect_to artist_url(@artist.id), :notice => "Artist updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @artist = Artist.find(params[:id])

    @artist.destroy

    redirect_to artists_url, :notice => "Artist deleted."
  end
end
