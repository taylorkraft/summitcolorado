require './lib/scraper'

Mountain.delete_all

parks_scraper = Scraper.new('https://www.climb13ers.com/colorado-13ers/14ers/')
parks_scraper.scrape_mountains