require 'json'
require 'open-uri'

url = 'https://api.chucknorris.io/jokes/random'
joke_serialized = open(url).read
joke = JSON.parse(joke_serialized)

p joke["value"]
