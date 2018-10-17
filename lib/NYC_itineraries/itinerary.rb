class NYCItineraries::Length
    attr_accessor :name, :url 

  def self.type
    # I should return a bunch of instances of Lengths
    # puts "        Welcome to Frommer's Suggested Itineraries in New York City Gem!"
    # puts "        ________________________________________________________________"
    # puts "                                                                        "
    # puts <<-DOC
    #     1 - NYC in One Day
    #     2 - NYC in Two Days
    #     3 - NYC in Three Days
    #     4 - NYC for Food and Wine Lovers
    #     DOC

    one_day = self.new
    one_day.name = "In One Day in New York City"
    one_day.url = "https://www.frommers.com/destinations/new-york-city/suggested-itineraries/in-one-day"

    two_days = self.new
    two_days.name = "In Two Days in New York City"
    two_days.url =  "https://www.frommers.com/destinations/new-york-city/suggested-itineraries/in-two-days"

    three_days = self.new
    three_days.name = "In Three Days in New York City"
    three_days.url = "https://www.frommers.com/destinations/new-york-city/suggested-itineraries/in-three-days"

    food_and_wine = self.new
    food_and_wine.name = "For Food and Wine Lovers in New York City"
    food_and_wine.url = "https://www.frommers.com/destinations/new-york-city/suggested-itineraries/for-food-and-wine-lovers"

    [one_day, two_days, three_days, food_and_wine]
  end
end
