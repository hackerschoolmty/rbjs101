require 'rest-client'
require 'nokogiri'

class GagReader
  URL = 'http://www.9gag.com'
  
  attr_reader :gags

  def initialize
    @gags = fetch_gags
  end

  def loved_gag
    gags.sort_by(&:points).last
  end

  def commented_gag
    gags.sort_by(&:comment_count).last
  end

  private

  def fetch_gags
    dom.css('article').map{|gag_dom| GagDigestor.new(gag_dom).to_gag }
  end

  def dom
    Nokogiri::HTML(document)
  end

  def document
    RestClient.get(URL)
  end 

end