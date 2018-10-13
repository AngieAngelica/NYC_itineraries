require 'nokogiri'
require 'open-uri'
require 'pry'

class NYCItineraries::Scraper
  @@list = []
  
  def self.list
    @@list
  end
  
  def self.page(url)
    Nokogiri::HTML(open(url))
  end
  
end
