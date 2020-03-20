require 'nokogiri'
require 'open-uri'
require 'pry'

class Scraper

  attr_accessor :doc 

  def initialize(url)
    @doc = Nokogiri::HTML(open(url))
  end


end

parks_scraper = Scraper.new('https://www.climb13ers.com/colorado-13ers/14ers/')

binding.pry

# Name
# parks_scraper.doc.css('tr span.name')[0].text

# Elevation
# parks_scraper.doc.css('tr span')[0].text

# Summit? Y/N

# If Y enter Summit Time if N N/A