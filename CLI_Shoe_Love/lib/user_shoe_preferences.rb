# this is the main class where you can ask a user questions 

class Shoes 
  
  def initialize 
    
  end 
  
  def shoe_questions # this method should prompt the user with questions for shoe type (occasion), color and heel height
    # this method will take in user input and return a list of three selections based on user preferences 
    puts "What type of occasion are you shopping for: Work, Night Out, Vacation, Special Event"
      occasion = gets.chomp # save in a variable in case you need to operate on
      # if occasion.downcase == "work" 
        # Shoes.type should return - Pumps, Sandals, Booties, Flats 
      # if occasion.downcase == "vacation"
        # shoe type should not include pumps, booties
        # Shoes.type should return - Sandals, Flats 
      # if occasion.downcase == "special event"
        # shoe type should include pumps, sandals
        # Shoes.type should return - Pumps, Sandals 
    puts "What color shoes would you prefer: Black, White, Nude, Blue, Red, Yellow, or Multicolor"
      shoe_color = gets.chomp
      # sort by occasion and then color 
    puts "What is your ideal heel height (in inches): None, 4, 5, 6, 7"
      heel_height = gets.chomp
    puts "What price range do you prefer: $450-$600, $600-$750, $750-$900, $900+"
      shoe_price = gets.chomp
    shoe_name = "Casablanca"
    shoe_type = "Pump"
    # the statement below includes represent variables that need to be created
    puts "Here are your results for #{occasion}: /n
          1. #{shoe_name} - #{shoe_type} - #{heel_height} - #{shoe_color} - #{shoe_price}
          2. #{shoe_name} - #{shoe_type} - #{heel_height} - #{shoe_color} - #{shoe_price}
          3. #{shoe_name} - #{shoe_type} - #{heel_height} - #{shoe_color} - #{shoe_price}"
  end 
  
  
end 