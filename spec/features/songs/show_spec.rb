require 'rails_helper'

RSpec.describe "theh songs show page" do
  it "displays the song title" do
    artist = Artist.create!(name: 'Carly Rae Jepson')
    song = artist.songs.create!(title: "I Really Like You", length: 208, play_count: 2456357)
    song2 = artist.songs.create!(title: "Call Me Maybe", length: 107, play_count: 501535)

    visit "/songs/#{song.id}"

    expect(page).to have_content(song.title)
    expect(page).to_not have_content(song2.title)
  end

  it 'displays the name of the artist for the song' do
    artist = Artist.create!(name: 'Carly Rae Jepson')
    song = artist.songs.create!(title: "I Really Like You", length: 208, play_count: 2456357)
    song2 = artist.songs.create!(title: "Call Me Maybe", length: 107, play_count: 501535)

    visit "/songs/#{song.id}"
    save_and_open_page
    expect(page).to have_content(artist.name)
  end

end
