class Song
    attr_accessor :name, :artist, :genre

    @@count = 0
    @@genres = []
    @@artists = []

    def initialize(name, artist, genre)
        @@count += 1
        self.name = name
        self.artist = artist
        @@artists << artist
        self.genre = genre
        @@genres << genre
    end

    def self.count
        @@count
    end

    def self.genres
        @@genres.uniq
    end

    def self.artists
        @@artists.uniq
    end

    def self.genre_count
        result = {}
        self.genres.each do |genre|
            result[genre] = @@genres.count(genre)
        end
        result
    end

    def self.artist_count
        result = {}
        self.artists.each do |artist|
            result[artist] = @@artists.count(artist)
        end
        result
    end
end