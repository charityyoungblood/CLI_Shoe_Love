# this file will hold all the methods that run the CLI  # any portion of asking questions to user, CLI, etc place in this class 

class ShoeLoveController
  
  def shoe_questions # this is the method where you can ask a user questions
    # need to create a loop or call shoe_questions again so that if the user doesn't enter the correct data, they will be asked the question(s) again
    puts "What shoe type do you prefer: Sandals, Booties, Flats, or Pumps"
      @type = gets.chomp 
    
    puts "What color shoes would you prefer: Black, Red, or Any"
      @color = gets.chomp
  end 
  
  
  
  
  
end 