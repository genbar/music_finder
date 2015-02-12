class SongRating < ActiveRecord::Base
  def user
    User.find(self.user_id)
  end
end
