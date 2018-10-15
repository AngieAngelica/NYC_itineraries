class NYCItineraries::CLI

    def call
        list_itineraries
        prompt_for_user
        goodbye
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
        input = nil
        while input != "exit"
            puts "        Please select the number of itinerary that you are interested in or type exit:"
        input = gets.strip.downcase
          case input
          when "1"
            puts "More info 1"
          when "2"
            puts "More info 2 "
          when "3"
            puts "More info 3"
          end
        end
    end

    def goodbye
      puts "Enjoy your stay in NYC! Bye!"
    end

end

