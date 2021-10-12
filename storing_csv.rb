require 'csv'

# TODO - let's read/write data from beers.csv
filepath    = 'data/new_beers.csv'

csv_options = { col_sep: ',', force_quotes: true, quote_char: '"' }

beers = [
  {
    name: 'Edelweiss',
    appearance: 'White',
    origin: 'Austria'
  },
  {
    name: 'Camden Ale',
    appearance: 'Ale',
    origin: 'UK'
  },
]

CSV.open(filepath, 'wb', csv_options) do |csv|
  csv << ["Name", "Appearance", "Origin"]
  # csv << [beers[0][:name], beers[0][:appearance], beers[0][:origin]]
  # csv << [beers[1][:name], beers[1][:appearance], beers[1][:origin]]

  beers.each do |beer_hash|
    csv << [beer_hash[:name], beer_hash[:appearance], beer_hash[:origin]]
  end
end
