require 'nokogiri'
require 'open-uri'
require 'pry'

class Scraper

  def initialize(url)
    @doc = Nokogiri::HTML(open(url))
  end

  def scrape_mountains
    @doc.css('tbody tr').each do |row|
      name = row.css('span.name').text
      elevation = row.css('span').text.split("'")[0]

      Mountain.create(name: name, elevation: elevation + "'")
    end
  end

end

# Summit? Y/N

# If Y enter Summit Time if N N/A