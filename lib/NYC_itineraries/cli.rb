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

        @itineraries = NYCItineraries::Length.type
    end

    def prompt_for_user
        input = nil
        while input != "exit"
          puts <<-DOC
        Type the number of the itinerary you are interested in, 
        or type list to see your options again, 
        or type exit:"
                  DOC
        input = gets.strip.downcase
          case input
          when "1"
            puts "More info 1"
          when "2"
            puts "More info 2 "
          when "3"
            puts "More info 3"
          when "list"
            list_itineraries
          else 
            puts "        Please try again:"
          end
        end
    end

    def goodbye
      puts "Enjoy your stay in NYC! Bye!"
    end

end

