
pokemon_api = "https://pokeapi.co/api/v2/pokemon/"
response_string = RestClient.get(pokemon_api)
json_hash = JSON.parse(response_string)

#json_hash["results"][0] #=> {bulbasaur's hash}