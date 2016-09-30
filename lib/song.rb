

class Song

	@@count = 0
	@@artists = []
	@@genres = []

	attr_reader :name, :artist, :genre

	def initialize(name, artist, genre)
		@name = name
		@artist = artist
		@genre = genre

		@@count += 1
		@@artists.push(self.artist)
		@@genres.push(self.genre)
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

	def self.artist_count
		@@artists.each_with_object({}) do |artist, artist_hash|
			unless artist_hash[artist]
				artist_hash[artist] = 0 
			end
			artist_hash[artist] += 1
		end
	end

	def self.genre_count
		@@genres.each_with_object({}) do |genre, genre_hash|
			unless genre_hash[genre]
				genre_hash[genre] = 0 
			end
			genre_hash[genre] += 1
		end
	end


end