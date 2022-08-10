class Song 
    attr_reader :name, :artist, :genre
    @@count = 0
    @@artists = []
    @@genres = []
    def initialize(name, artist, genre)
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
        unique_artists_array = []
        @@artists.each_with_index do |artist, index|
            (@@artists[index] == @@artists[index+1]) ? nil : unique_artists_array << artist
        end
        unique_artists_array
    end

    def self.genres
        unique_genres_array = []
        @@genres.each_with_index do |genre, index|
            (@@genres[index] == @@genres[index+1]) ? nil : unique_genres_array << genre
        end
        unique_genres_array
    end

    def self.genre_count
        genres_hash = Hash.new(0)
        @@genres.each do |genre|
            genres_hash[genre]
            genres_hash[genre] += 1
        end
        genres_hash
    end

    def self.artist_count
        artists_hash = Hash.new(0)
        @@artists.each do |artist|
            artists_hash[artist]
            artists_hash[artist] += 1
        end
        artists_hash
    end
end