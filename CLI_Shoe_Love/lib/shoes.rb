require 'pry'

# this is the main class where you can ask a user questions 

class Shoes # set shoe type, color, price, heel height 
   attr_accessor :occasion, :type, :color
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
  
  def color
    @color
  end 
  
  def shoe_questions # this method should prompt the user with questions for shoe type (occasion), color and heel height
   
    # this method will take in user input and return a list of three selections based on user preferences 
    puts "What occasion are you shopping for: Work, Night Out, Vacation, Special Event"
    
      @occasion = gets.chomp # save in a variable in case you need to operate on
    # ***RE-EVALUATE type attribute and how it connects to the program? Do you need a type - shoe name and type are connected once they are displayed*** 
    puts "What shoe type do you prefer: Sandals, Booties, Flats, or Pumps"
      @type = gets.chomp 
    
    puts "What color shoes would you prefer: Black, Red, or Any"
      @color = gets.chomp
    
    # create a loop or call shoe_questions again so that if the user doesn't enter the correct data, they will be asked the question(s) again
    
      black_shoes = HTTParty.get("https://www.aquazzura.com/en/boutique-online/woman/view-all.html?colori=2")
      black_shoes_scrape = Nokogiri::HTML(black_shoes)
      black_shoes_select = black_shoes_scrape.css("div .info_prodotto").text
      selection = black_shoes_select.split("QUICK VIEW")
      
    
    if @occasion.downcase == "work" && @type.downcase == "pumps" && @color.downcase == "black" 

        @updated_selection = selection.collect do |select|
          select.split("105") 
          # add a regex to take out additional numbers
        end  
          puts "I'm here"
          @updated_selection.collect do |shoe_selection|
              shoe_selection.slice!(-1)
          end 
        puts "I'm here"
   
    # ***if statement or unless statement to look for shoe type: Pump, Bootie, Sandal, Flat***
        
      # *** need to display a string in puts statement below***
     # the puts statement should select 3 random choices, based on user preferences 
      
          
      puts "Here are your results for #{occasion}:
      
        1. #{@updated_selection[3]} 
        2. #{@updated_selection[6]}
        3. #{@updated_selection[8]}"
        end
  

end
end