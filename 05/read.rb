## Files && Strings
# http://ruby-doc.org/core-2.2.0/File.html

# Read a file
File.read('./support/countries.txt')

# Process a file lines
File.readlines('./support/countries.txt').each do |country|
  puts country
end

# Require ruby files
Dir['./lib/*.rb'].each { |file| require file }

hsmty = HackerSchool.new # From lib/hackerschool.rb

# Read a csv file
# http://ruby-doc.org/stdlib-1.9.2/libdoc/csv/rdoc/CSV.html
require 'csv'

CSV.foreach('./support/hackers.csv', headers: true) do |row|
  hsmty.hackers << Hacker.new(row["Nombre"], row["Apellido"], row["Email"])
end

hsmty.hackers.each { |hacker| puts hacker } 

# Wrive a file
file = File.open('./support/output_hackers.csv', 'w+')
file.write(hsmty.hackers.map(&:to_csv).join("\n"))
file.close