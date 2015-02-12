# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Artist.destroy_all
Song.destroy_all
User.destroy_all
ArtistRating.destroy_all
SongRating.destroy_all

a1 = Artist.new
a1.name = "Herbie Hancock"
a1.image_url = "http://content9.flixster.com/photo/11/51/99/11519907_ori.jpg"
a1.save

a2 = Artist.new
a2.name = "Kanye West"
a2.image_url = "http://a3.files.biography.com/image/upload/c_fill,dpr_1.0,g_face,h_300,q_80,w_300/MTE1ODA0OTcxNDc4MTg5NTgx.jpg"
a2.save

a3 = Artist.new
a3.name = "Beck"
a3.image_url = "https://consequenceofsound.files.wordpress.com/2012/05/beck-third-man-records.jpg"
a3.save

puts "#{Artist.count} artists in the database"

s1 = Song.new
s1.artist_id = a1.id
s1.image_url = "http://fogcityvapors.com/wp-content/uploads/cantaloupe-400x4006.jpg"
s1.name = "Cantaloupe Island"
s1.save

s2 = Song.new
s2.artist_id = a1.id
s2.name = "Rockit"
s2.image_url = "http://upload.wikimedia.org/wikipedia/en/e/eb/Herbie_Hancock_-_Rockit.jpg"
s2.save

s3 = Song.new
s3.artist_id = a2.id
s3.name = "Power"
s3.image_url = "http://upload.wikimedia.org/wikipedia/en/8/81/Kanye_West_-_Power.png"
s3.save

s4 = Song.new
s4.artist_id = a3.id
s4.name = "Devil's Haircut"
s4.image_url = "http://upload.wikimedia.org/wikipedia/en/0/02/Devils_Haicut.jpg"
s4.save

puts "#{Song.count} songs in the database"

u1 = User.new
u1.name = "Arjun"
u1.save

puts "#{User.count} users in the database"

ar1 = ArtistRating.new
ar1.user_id = u1.id
ar1.artist_id = a1.id
ar1.rating = 5
ar1.save

ar2 = ArtistRating.new
ar2.user_id = u1.id
ar2.artist_id = a2.id
ar2.rating = 4
ar2.save

puts "#{ArtistRating.count} artist_ratings in the database"

sr1 = SongRating.new
sr1.song_id = s1.id
sr1.user_id = u1.id
sr1.rating = rand(1..5)
sr1.save

sr2 = SongRating.new
sr2.song_id = s2.id
sr2.user_id = u1.id
sr2.rating = rand(1..5)
sr2.save

sr3 = SongRating.new
sr3.song_id = s3.id
sr3.user_id = u1.id
sr3.rating = rand(1..5)
sr3.save

sr4 = SongRating.new
sr4.song_id = s4.id
sr4.user_id = u1.id
sr4.rating = rand(1..5)
sr4.save

puts "#{SongRating.count} song_ratings in the database"










