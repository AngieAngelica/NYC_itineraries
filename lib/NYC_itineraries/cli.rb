class NYCItineraries::CLI

    def call
        puts "        Welcome to Frommer's Suggested Itineraries in New York City Gem!"
        puts "        ________________________________________________________________"
        puts "                                                                        "

        list_itineraries
    end

    def list_itineraries
        puts <<-DOC
        Please select the itinerary that you are interested in:

        1 - NYC in One Day
        2 - NYC in Two Days
        3 - NYC in Three Days
        4 - NYC for Food and Wine Lovers
        DOC

    end

end

