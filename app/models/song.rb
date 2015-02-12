class Song < ActiveRecord::Base
  def song_ratings
    SongRating.where(song_id: self.id)
  end
end
