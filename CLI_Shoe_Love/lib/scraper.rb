require 'pry'
require 'HTTParty'
require 'nokogiri'
require 'open-uri'
require_relative './shoes.rb'

class Scraper 
  
  def user_selections 
    new_shoe = page_scrape.css("div .info_prodotto").text
    new_shoe.split("QUICK VIEW")
      self.get_shoes.each do |best_shoe|
      shoe = Shoes.new
      shoe.type = best_shoe.css("h2").text
      course.color = best_shoe.css(".date").text
      course.price = best_shoe.css("p").text
      shoe.heel_height = best_shoe.css("a").text 
      end 
    end 
  
  def get_shoes
    self.get_page.css("div .info_prodotto").text # this returns all of the text of the shoes on the home page, they are not sorted by color,price,etc
    
  end 
  
  def print_user_selections
    self.user_selections
    Shoes.all.each do |shoe|
      if shoe.type
        puts "Type: #{shoe.type}"
        puts "Color: #{shoe.color}"
        puts "Price: #{shoe.price}"
        puts "Heel height: #{shoe.heel_height}"
      end
    end 
  end 
  
  def get_page 
    
    # shoe colors Black, Nude, Blue, Red, Yellow, or Multicolor
#    any_color_shoes = HTTParty.get("https://www.aquazzura.com/en/boutique-online/woman/view-all.html?")
    black_shoes = HTTParty.get("https://www.aquazzura.com/en/boutique-online/woman/view-all.html?colori=2")
#    gold_shoes = HTTParty.get("https://www.aquazzura.com/en/boutique-online/woman.html?colori=16")
#    red_shoes = HTTParty.get("https://www.aquazzura.com/en/boutique-online/woman.html?colori=12")
#    purple_shoes = HTTParty.get("https://www.aquazzura.com/en/boutique-online/woman.html?colori=11")
#    
#  #*** for each variable of shoe color - replicate line 50 and 51 **
#    # update the variables to show shoes by color
##    binding.pry
#    main_page_scrape = Nokogiri::HTML(all_shoes)
    black_shoes_scrape = Nokogiri::HTML(open(black_shoes))
#    all_shoes_select = all_shoes.css("div .info_prodotto").text # this currently works 
#    all_shoes_select.split("QUICK VIEW") # this splits the contents of new_shoe (all shoes listed on first page of Aquazurra site into a comma separated array - not sorted by color,price,etc
##    page.css("a #colori_sel_2")
  end
  
 
  
  
  
  
  
end 