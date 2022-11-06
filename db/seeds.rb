require 'json'
require 'open-uri'

url = "seed.json"

Cocktail.delete_all if Rails.env.development?

cocktails = JSON.parse(open(url).read)

cocktails.each do |cocktail|
  Cocktail.create!(name: cocktail["name"], glass: cocktail["glass"], preparation: cocktail["preparation"])
end