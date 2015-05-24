## Libraries

module Mailer
  def email_message(message)
    puts "Sending E-mail to: #{self.email}"
    ## Let's assume this sends an e-mail
  end

  ## Regular expressions are important
  ## http://rubular.com/
  def email_domain
    email.scan(/\@(.+)/)
  end
end

class User
  include Mailer

  attr_accessor :email, :name
  
  def initialize(name, email)
    @name = name
    @email = email
  end
end

adrian = User.new("Adrian", "adrian@innku.com")
puts adrian.email_domain # innku.com
puts adrian.email_message("Hola Adrian")

## Gems
## Example Markdown (https://github.com/adam-p/markdown-here/wiki/Markdown-Cheatsheet)
## Go to console and do: 
## gem install redcarpet; gem install github-markup

require 'rubygems'
require 'github/markup'
puts GitHub::Markup.render('4.markdown', File.read('./read.markdown'))

## Another beautiful example
## RestClient: Make Web Requests beautifully
## Go to console and do:
## gem install rest-client
## gem install json
## Reference: https://github.com/rest-client/rest-client
require 'rest-client'

## Getting WebSites 
RestClient.get 'http://www.google.com'

## Getting Resources
raw_cities = RestClient.get 'http://www.reserbus.mx/api/v1/cities.json'

## Using those resources
require 'json'
cities = JSON.parse(raw_cities)
cities.each { |city| puts city["name"] }