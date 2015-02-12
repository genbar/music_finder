class CreateSongRatings < ActiveRecord::Migration
  def change
    create_table :song_ratings do |t|
      t.integer :user_id
      t.integer :song_id

      t.timestamps

    end
  end
end
