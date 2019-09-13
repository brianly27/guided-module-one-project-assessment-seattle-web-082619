class PokemonAPI
    attr_accessor :pokemon_api

    @@all = []
    def initialize
        @@all << self
    end

    def self.all
        @@all 
    end

    def self.count
        @pokemon_api = "https://pokeapi.co/api/v2/pokemon/"
        response_string = RestClient.get(@pokemon_api)
        json_hash = JSON.parse(response_string)
        @pokemon_count = json_hash["count"]
        @pokemon_count
        #make a rake file and call self.count
    end

    def self.fill_pokemon_table #iterate on limit/offset
        offset = 0
        count = self.count
        while @pokemon_count - offset > 0
            url_with_offset = @pokemon_api + "?limit=20&offset=#{offset}"
        
            response_string = RestClient.get(url_with_offset)
            json_hash = JSON.parse(response_string)
            #returns "name" and "url"= "https://pokeapi.co/api/v2/pokemon/1/"
            json_hash["results"].map do |pokemon| 
                name = pokemon["name"] 
                url = pokemon["url"]
                pokemon_arr = url.split("https://pokeapi.co/api/v2/pokemon/")[1].split("/")
                pokemon_num = pokemon_arr[0].to_i
                Pokemon.create(name: "#{name}", pokemon_number: "#{pokemon_num}") 
            end
            offset += 20
        end
    end
end

