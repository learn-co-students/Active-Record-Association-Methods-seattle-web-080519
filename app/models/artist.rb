class Artist < ActiveRecord::Base
  has_many :songs
  has_many :genres, through: :songs

  def get_first_song
    self.songs.first
  end

  def get_genre_of_first_song
    self.get_first_song.genre
  end

  def song_count
    self.songs.count
  end

  def artist_genres
    genre_array = self.songs.map do |song|
      song.genre
    end
  end

  def genre_count
    self.artist_genres.uniq.count
  end

  def self.is_drake_here
    self.all.any? do |artists|
      artists.name == "Drake"
    end
  end

end