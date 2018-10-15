class NYCItineraries::CLI

    def call
        list_itineraries
        prompt_for_user
    end

    def list_itineraries
        puts "        Welcome to Frommer's Suggested Itineraries in New York City Gem!"
        puts "        ________________________________________________________________"
        puts "                                                                        "
        puts <<-DOC
        
        1 - NYC in One Day
        2 - NYC in Two Days
        3 - NYC in Three Days
        4 - NYC for Food and Wine Lovers

        DOC
       
    end

    def prompt_for_user
        puts "        Please select the number of itinerary that you are interested in:"
    end

end

