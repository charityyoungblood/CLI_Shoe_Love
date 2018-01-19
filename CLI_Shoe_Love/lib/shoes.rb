require 'pry'

# this is the main class where you can ask a user questions 

class Shoes # set shoe type, color 
  # this class should ONLY create objects and store them in @@all array
   attr_accessor :type, :color
  # access to array of all shoes
  
  # create instances of the Shoe class
  # find method with attribute type as argument 
  # need to add create method and save method 
  # Shoe.find_by_type(type)
  # Shoe.find_by_color_and_type(@type, @color) 
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
  
  
  def shoe_questions # this method should prompt the user with questions for shoe type (occasion), color and heel height
   
    # this method will take in user input and return a list of three selections based on user preferences 
    
    
    # create a loop or call shoe_questions again so that if the user doesn't enter the correct data, they will be asked the question(s) again
    # line 41 to 44 should be in Scraper class, in it's own method - line 47 - 50 needs to be moved
      black_shoes = HTTParty.get("https://www.aquazzura.com/en/boutique-online/woman/view-all.html?colori=2")
      black_shoes_scrape = Nokogiri::HTML(black_shoes)
      black_shoes_select = black_shoes_scrape.css("div .info_prodotto").text
      selection = black_shoes_select.split("QUICK VIEW")
      
    
    if @occasion.downcase == "work" && @type.downcase == "pumps" && @color.downcase == "black" 

        @updated_selection = selection.collect do |select|
          select.split("105") 
          # add a regex to take out additional numbers
        end  
          
          @updated_selection.collect do |shoe_selection|
              shoe_selection.slice!(-1)
          end 
        
   
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