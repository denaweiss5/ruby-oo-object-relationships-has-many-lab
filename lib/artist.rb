#require 'pry'

class Artist

    attr_accessor :name


    def initialize(name)
        @name = name
    end

    def add_song(song)
        song.artist = self
    end

    def add_song_by_name(name)
        song = Song.new(name)
        song.artist = self
    end

    def songs
        all_songs = Song.all 
        all_songs.select do |song|
            song.artist == self
        end
    end 

    def self.song_count
        count = Song.all.map do |song|
            Song.all
            end
            count.count
    end

end
