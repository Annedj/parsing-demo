require 'json'

# TODO - let's read/write data from beers.json
filepath    = 'data/beers.json'

serialized_beers = File.read(filepath)

beers_hash = JSON.parse(serialized_beers)

beers_hash["beers"].each do |beer|
  # p beer["name"]
end

# Get the appearance of the third beer
# puts beers_hash["beers"][2]["appearance"]


# Storing JSON
filepath = 'data/new_beers.json'

beers = { beers:
  [
    {
      name:       'Edelweiss',
      appearance: 'White',
      origin:     'Austria'
    },
    {
      name:       'Guinness',
      appearance: 'Stout',
      origin:     'Ireland'
    },
    # etc...
  ]
}

p JSON.generate(beers)

File.open(filepath, 'wb') do |file|
  file.write(JSON.generate(beers))
end
