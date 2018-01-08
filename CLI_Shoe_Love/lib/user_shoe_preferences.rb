# this is the main class where you can ask a user questions 

class Shoes 
  
  def initialize 
    
  end 
  
  def shoe_questions # this method should prompt the user with questions for shoe type (occasion), color and heel height
    # this method will take in user input and return a list of three selections based on user preferences 
    puts "What type of occasion are you shopping for: Work, Night Out, Vacation, Special Event"
      occasion = gets.chomp # save in a variable in case you need to operate on
      # if occasion.downcase == "work"
      # if occasion.downcase == "vacation"
      # if occasion.downcase == "special occasion"
    puts "What color shoes would you prefer: Black, White, Nude, Blue, Red, Yellow, or Multicolor"
      shoe_color = gets.chomp
    puts "What is your ideal heel height (in inches): None, 4, 5, 6, 7"
      heel_height = gets.chomp
    puts "What price range do you prefer: $450-$600, $600-$750, $750-$900, $900+"
      shoe_price = gets.chomp
  end 
  
  
end 