require 'pry'

# this is the main class where you can ask a user questions 

class Shoes # set shoe type, color, price, heel height 
   attr_accessor :type, :price, :heel_height
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
    puts "What type of occasion are you shopping for: Work, Night Out, Vacation, Special Event"
    
      occasion = gets.chomp # save in a variable in case you need to operate on
    # ***RE-EVALUATE type attribute and how it connects to the program? Do you need a type - shoe name and type are connected once they are displayed*** 
    
#      if occasion.downcase == "work"
#          @type = ""
        # Shoes.type should return - Pumps, Sandals, Booties, Flats - will pull from all shoe types
      # if occasion.downcase == "night out"
         # Shoes.type should include Pumps, Sandals and Booties 
      # if occasion.downcase == "vacation"
        # shoe type should not include pumps, booties
        # Shoes.type should return - Sandals, Flats 
      # if occasion.downcase == "special event"
        # shoe type should include pumps, sandals
        # Shoes.type should return - Pumps, Sandals 
    puts "What color shoes would you prefer: Black, Red, or Any"
      @color = gets.chomp
    
    # sort by occasion and then color 
    puts "What is your ideal heel height (in inches): None, 4, 5, 6, 7"
    # most shoes listed on sorted site are 105mm - 4 inches (black) and 105mm and 85mm - 3inches for red
      @heel_height = gets.chomp
    puts "What price range do you prefer: $450-$600, $600-$750, $750-$900, $900+"
      @price = gets.chomp
    shoe_name = "Baku Bootie"
    shoe_type = "Bootie"
    
    if occasion.downcase == "work" && @color.downcase == "black" && @heel_height == "6" && @price == "$600"
      black_shoes = HTTParty.get("https://www.aquazzura.com/en/boutique-online/woman/view-all.html?colori=2")
      black_shoes_scrape = Nokogiri::HTML(black_shoes)
      black_shoes_select = black_shoes_scrape.css("div .info_prodotto").text
      selection = black_shoes_select.split("QUICK VIEW")
        updated_selection = selection.collect do |select|
          select.split("NEW ARRIVAL")
          # add a regex to take out additional numbers
        end  
      new_selection = updated_selection.flatten! 
      # code works up to here
      # need to take out the 105 and second number - may need a regex for this 
     
      puts "Here are your results for #{occasion}:
        1. #{selection[3]}
        2. #{selection[6]}
        3. #{selection[8]}"
    end 
  end

end 