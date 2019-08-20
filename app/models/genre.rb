class Genre < ActiveRecord::Base
  has_many :songs
  has_many :artists, through: :songs

  def song_count
    self.songs.count
  end

  def genre_artists
    self.songs.map do |song|
      song.artist
    end
  end

  def artist_count
    self.genre_artists.uniq.count
  end

  def all_artist_names
    self.genre_artists.map do |artist|
      artist.name
    end
  end
end
