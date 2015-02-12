class Artist < ActiveRecord::Base
  def songs
    Song.where(:artist_id => self.id)
  end
end
