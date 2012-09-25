# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
albums = MusicAlbum.create([{ name: 'Plastic Seat Sweat '}, { name: "The Love That Won't Shut Up "}, { name: 'Tom Tom Club'}, { name: 'If YOu Want To Defeat Your Enemy, Sing His Song '}])
tracks = Track.create([{name: 'Godspeed You Black Emperor', music_album_id: 1}, {name: 'Devendra Banhart', music_album_id: 1}, {name: 'Lovesongs of the Christmas Spirit', music_album_id: 1}])
