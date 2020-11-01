class Song

    attr_accessor :name, :artist

    @@all = []

    def initialize (name)
        @name = name
        @@all << self
    end

   def self.all
    @@all
   end

   def artist_name
    Song.all.select do |song|
        song.artist = self.artist
            self.artist.name
        end
        self.artist.name
   end

end