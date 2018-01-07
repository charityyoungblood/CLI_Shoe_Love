# this is the main class where you can ask a user questions 

class Shoes 
  
  def initialize 
    
  end 
  
  def shoe_questions # this method should prompt the user with questions for shoe type (occasion), color and heel height
    # this method will take in user input and return a list of three selections based on user preferences 
    puts "What type of occasion are you shopping for: Work, Vacation, Special Occasion"
      occasion = gets.chomp # save in a variable in case you need to operate on
      # if occasion.downcase == "work"
      # if occasion.downcase == "vacation"
      # if occasion.downcase == "special occasion"
    puts "What color shoes would you prefer: Black, White, Nude, Blue, Red, Yellow, or Multicolor"
      shoe_color = gets.chomp
    puts "What is your ideal heel height (in inches): 3, 4, 5, 6, 7"
      heel_height = gets.chomp
  end 
  
  
end 