require 'nokogiri'
require 'open-uri'
require 'pry'

class NYCItin::Scraper
  @@list = []
  
  def self.list
    @@list
  end
  
  def self.page(url)
    Nokogiri::HTML(open(url))
  end
  
end
