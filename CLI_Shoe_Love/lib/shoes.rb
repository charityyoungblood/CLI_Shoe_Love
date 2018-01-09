require 'pry'

# this is the main class where you can ask a user questions 

class Shoes # set shoe type, color, price, heel height 
   attr_accessor :type, :color, :price, :heel_height
  # access to array of all shoes
  @@all = []
  def initialize 
    @@all << self 
  end 
  
  def self.all
    @@all
  end 
  
  def self.reset_all
    @@all = []
  end 
  
#  def color 
#    @color
#  end 
#  
#  def color=(color)
#    @color = color
#  end 
  
  def shoe_questions # this method should prompt the user with questions for shoe type (occasion), color and heel height
   
    # this method will take in user input and return a list of three selections based on user preferences 
    puts "What type of occasion are you shopping for: Work, Night Out, Vacation, Special Event"
    
      occasion = gets.chomp # save in a variable in case you need to operate on
    
#       if occasion.downcase == "work"
          
        # Shoes.type should return - Pumps, Sandals, Booties, Flats - will pull from all shoe types
      # if occasion.downcase == "night out"
         # Shoes.type should include Pumps, Sandals and Booties 
      # if occasion.downcase == "vacation"
        # shoe type should not include pumps, booties
        # Shoes.type should return - Sandals, Flats 
      # if occasion.downcase == "special event"
        # shoe type should include pumps, sandals
        # Shoes.type should return - Pumps, Sandals 
    puts "What color shoes would you prefer: Black, Gold, Red, Purple or Any"
      @color = gets.chomp
    
    # sort by occasion and then color 
    puts "What is your ideal heel height (in inches): None, 4, 5, 6, 7"
      @heel_height = gets.chomp
    puts "What price range do you prefer: $450-$600, $600-$750, $750-$900, $900+"
      @price = gets.chomp
    shoe_name = "Baku Bootie"
    # the statement below includes represent variables that need to be created
    puts "Here are your results for #{occasion}: /n
          1. #{shoe_name} - #{shoe_type} - #{@heel_height} - #{@color} - #{@price}
          2. #{shoe_name} - #{shoe_type} - #{@heel_height} - #{@color} - #{@price}
          3. #{shoe_name} - #{shoe_type} - #{@heel_height} - #{@color} - #{@price}"
  end 
  
  
end 