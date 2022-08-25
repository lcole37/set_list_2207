# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Song.destroy_all
Artist.destroy_all

artist = Artist.create!(name: 'Carly Rae Jepson')
song = artist.songs.create!(title: "I Really Like You", length: 208, play_count: 2456357)
song2 = artist.songs.create!(title: "Call Me Maybe", length: 107, play_count: 501535)
