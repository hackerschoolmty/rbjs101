## Traversing the DOM with CSS
## Go to console and:
## gem install nokogiri
## Reference: http://www.rubydoc.info/github/sparklemotion/nokogiri

require 'rest-client'
require 'nokogiri'

# Read the html
document = RestClient.get('http://www.rottentomatoes.com/')
# Model the DOM
dom = Nokogiri::HTML(document)
# Traverse the DOM
movies = []

dom.css('#Top-Box-Office tr').each do |movie_tr|
  score = movie_tr.css('.left_col .tMeterScore').text
  name = movie_tr.css('.middle_col a').text
  sales = movie_tr.css('.right_col').text
  movies << {
    name: name,
    sales: sales,
    score: score
  }
end

# Movies
puts movies.inspect