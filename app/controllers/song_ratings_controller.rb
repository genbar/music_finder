class SongRatingsController < ApplicationController
  def index
    @song_ratings = SongRating.all
  end

  def show
    @song_rating = SongRating.find(params[:id])
  end

  def new
    @song_rating = SongRating.new
  end

  def create
    @song_rating = SongRating.new
    @song_rating.user_id = params[:user_id]
    @song_rating.song_id = params[:song_id]

    if @song_rating.save
      redirect_to song_ratings_url, :notice => "Song rating created successfully."
    else
      render 'new'
    end
  end

  def edit
    @song_rating = SongRating.find(params[:id])
  end

  def update
    @song_rating = SongRating.find(params[:id])

    @song_rating.user_id = params[:user_id]
    @song_rating.song_id = params[:song_id]

    if @song_rating.save
      redirect_to song_rating_url(@song_rating.id), :notice => "Song rating updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @song_rating = SongRating.find(params[:id])

    @song_rating.destroy

    redirect_to song_ratings_url, :notice => "Song rating deleted."
  end
end
