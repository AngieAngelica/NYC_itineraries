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

  def self.suggested_info
    frommers ="https://www.frommers.com/destinations/new-york-city/suggested-itineraries"
    itineraries = self.page(frommers).css('div class="row"')
    itineraries.each do |suggestions|
      @@list << {
        :name => suggestions.css(<li class="">.text)
        :link => suggestions.css('a').attribute('href').value
      }
    end
  end
  
end

<li class="active">
        <a href="/destinations/new-york-city/suggested-itineraries"><strong>Suggested Itineraries</strong></a>
          <ul class="menu-level-2 nav-stacked">
              <li class="">
                <a href="/destinations/new-york-city/suggested-itineraries/in-one-day">In One Day</a>
              </li>
              <li class="">
                <a href="/destinations/new-york-city/suggested-itineraries/in-two-days">In Two Days</a>
              </li>
              <li class="">
                <a href="/destinations/new-york-city/suggested-itineraries/in-three-days">In Three Days</a>
              </li>
              <li class="">
                <a href="/destinations/new-york-city/suggested-itineraries/for-food-and-wine-lovers">For Food and Wine Lovers</a>
              </li>
          </ul>
      </li>

      