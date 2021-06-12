require 'csv'

puts 'Cleaning database...'

  Word.destroy_all


csv_options = { col_sep: ',', quote_char: '"', headers: :first_row }
filepath1    = 'words.csv'
filepath2    = 'urls.csv'

puts 'Creating backgrounds...'
urls = []

CSV.foreach(filepath2, csv_options) do |row|
  puts "- #{row['description']}"
  urls << row['url']
end

puts 'Creating words...'
i = 0
day = Date.new(2021, 06, 05)

CSV.foreach(filepath1, csv_options) do |row|
  puts "- #{row['name']}"
  Word.create(name: row['name'], cat: row['cat'], definition: row['definition'], example: row['example'], url: urls[i], day: day)
  i < 15 ? i = i+1 : i = 0
  day = day + 1.day
end
