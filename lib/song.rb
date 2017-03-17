class Song
  attr_accessor :name, :artist, :genre
  @@count = 0
  @@artists = []
  @@genres = []



  def initialize(name,artist,genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@artists << artist
    @@genres << genre
  end

  def self.count
    @@count
  end


  def self.artists
    @@artists.uniq
  end

  def self.genres
    @@genres.uniq
  end

  def self.genre_count
    unique_genres = {}
    @@genres.uniq do |genre|
      unique_genres[genre] = 0
    end
    @@genres.each do |genre|
      unique_genres[genre] += 1
    end
    unique_genres
  end

  def self.artist_count
    unique_artists = {}
    @@artists.uniq do |genre|
      unique_artists[genre] = 0
    end
    @@artists.each do |genre|
      unique_artists[genre] += 1
    end
    unique_artists
  end




end
