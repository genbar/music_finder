class AddRatingColumnsForArtistsAndSongs < ActiveRecord::Migration
  def change
    add_column :artist_ratings, :rating, :integer
    add_column :song_ratings, :rating, :integer
  end
end
