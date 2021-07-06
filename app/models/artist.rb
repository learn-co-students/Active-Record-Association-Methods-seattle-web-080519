require 'pry'
class Artist < ActiveRecord::Base
  has_many :songs
  has_many :genres, through: :songs

  def get_genre_of_first_song
    #song.all[0].genre.id or genre_id
    self.songs.first.genre
    #return the genre(.genre) of the artist's (self.) first saved song(.song.first)
    
  end

  def song_count
    self.songs.length
    # binding.pry
    #return the number of songs(songs.length) associated with the artist(self)
    
  end

  def genre_count
    self.genres.length
    #return the number(.length) of genres(.genres) associated with the artist(self.)
 
  end
end
