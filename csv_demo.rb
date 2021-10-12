require 'csv'

# TODO - let's read/write data from beers.csv
filepath    = 'data/beers.csv'
csv_options = { col_sep: ',', quote_char: '"', headers: :first_row }

beers = []

# Without header: row will act as an Array

CSV.foreach(filepath) do |row|
  # p name = row["Name"]
  # puts "#{row[0]} - #{row[1]}, from #{row[2]}"
end

# With header: row will act as a Hash

CSV.foreach(filepath, csv_options) do |row|
  # p name = row["Name"]
  beers << "#{row["Name"]} - #{row["Appearance"]}, from #{row["Origin"]}"
end

p beers
