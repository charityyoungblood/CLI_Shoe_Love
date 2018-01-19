# this file will hold all the methods that run the CLI  # any portion of asking questions to user, CLI, etc place in this class 

class ShoeLoveController
  
  def shoe_questions # this is the method where you can ask a user questions
    puts "What shoe type do you prefer: Sandals, Booties, Flats, or Pumps"
      @type = gets.chomp 
    
    puts "What color shoes would you prefer: Black, Red, or Any"
      @color = gets.chomp
  end 
  
  
  
  
  
end 