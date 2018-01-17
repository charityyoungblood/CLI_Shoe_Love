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
    
    # create a loop or call shoe_questions again so that if the user doesn't enter the correct data, they will be asked the question(s) again
    
    if occasion.downcase == "work" && @color.downcase == "black" && @heel_height == "6" && @price == "$600"
      black_shoes = HTTParty.get("https://www.aquazzura.com/en/boutique-online/woman/view-all.html?colori=2")
      black_shoes_scrape = Nokogiri::HTML(black_shoes)
      black_shoes_select = black_shoes_scrape.css("div .info_prodotto").text
      selection = black_shoes_select.split("QUICK VIEW")
        @updated_selection = selection.collect do |select|
          select.split("NEW ARRIVAL") 
          # add a regex to take out additional numbers
        end  
    end
          new_selection = @updated_selection.flatten!
            @better_selection = new_selection.collect do |new_shoes|
            new_shoes.split(" ")
            end
              @better_selection.collect do |better_shoes|
              better_shoes.slice!(-2..-1)
                # now better_selection is assigned to shoes without last two indexes
        end
         @better_selection.flatten!.collect do |selection|
            selection.split(" ")
      # create an "if statement" if array has more than 2 elements, than slice (-2..-1), else, slice(-1)
      end
      # code works up to here
      # need to take out the 105 and second number - may need a regex for this 
     # the puts statement should select 3 random choices, based on user preferences 
    @better_selection.collect do |result|
      puts "Here are your results for #{occasion}:
      
        1. #{result[3]} 
        2. #{result[6]}
        3. #{result[8]}"
    end
  end

end 