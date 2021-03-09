class Song

    attr_accessor :name, :artist

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def self.new_by_filename(file) 
      #creates instance of a song from file
      #associates new song with artist from filename
      #returns new instance
      song_name = file.split(" - ")[1]
      artist_name = file.split(" - ")[0]
      song = Song.new(song_name)
      song.artist_name=(artist_name)
      return song
    end

    def artist_name=(artist_name)
      #works with #Artist.find_or_create_by_name
      self.artist = Artist.find_or_create_by_name(artist_name)
    end

end