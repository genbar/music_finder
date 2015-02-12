class ArtistRatingsController < ApplicationController
  def index
    @artist_ratings = ArtistRating.all
  end

  def show
    @artist_rating = ArtistRating.find(params[:id])
  end

  def new
    @artist_rating = ArtistRating.new
  end

  def create
    @artist_rating = ArtistRating.new
    @artist_rating.artist_id = params[:artist_id]
    @artist_rating.user_id = params[:user_id]

    if @artist_rating.save
      redirect_to artist_ratings_url, :notice => "Artist rating created successfully."
    else
      render 'new'
    end
  end

  def edit
    @artist_rating = ArtistRating.find(params[:id])
  end

  def update
    @artist_rating = ArtistRating.find(params[:id])

    @artist_rating.artist_id = params[:artist_id]
    @artist_rating.user_id = params[:user_id]

    if @artist_rating.save
      redirect_to artist_rating_url(@artist_rating.id), :notice => "Artist rating updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @artist_rating = ArtistRating.find(params[:id])

    @artist_rating.destroy

    redirect_to artist_ratings_url, :notice => "Artist rating deleted."
  end
end
