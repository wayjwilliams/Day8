require 'bundler'
Bundler.require

puts "In 6 days, it will be #{6.days.from_now}"

puts "What do you want to search for?"
search = gets
results = Geocoder.search(search)
lat_lgn = results.first.data["geometry"]["location"].values.jo#get rest

Launchy.open "https://www.google.com/maps/@#{lat_lng},14z"
