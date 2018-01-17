require 'pry'
require 'HTTParty'
require 'nokogiri'
require 'open-uri'
require_relative './shoes.rb'

class Scraper 
  
  
  def get_page 
    # create an if statement - will probably need to be in another method - 
      # if Shoes.color.downcase == "any"
      # pull from all_color_shoes - iterate over 
    # shoe colors Black, Nude, Blue, Red, Yellow, or Multicolor
    binding.pry
    if Shoes.color
    all_color_shoes = HTTParty.get("https://www.aquazzura.com/en/boutique-online/woman/view-all.html?")
#    black_shoes = HTTParty.get("https://www.aquazzura.com/en/boutique-online/woman/view-all.html?colori=2")
#    gold_shoes = HTTParty.get("https://www.aquazzura.com/en/boutique-online/woman.html?colori=16")
#    red_shoes = HTTParty.get("https://www.aquazzura.com/en/boutique-online/woman.html?colori=12")
#    purple_shoes = HTTParty.get("https://www.aquazzura.com/en/boutique-online/woman.html?colori=11")
##    
##  #*** for each variable of shoe color - replicate line 50 and 51 **
##    # update the variables to show shoes by color
###  
    all_color_shoes_scrape = Nokogiri::HTML(all_color_shoes)
   all_shoes_select = all_color_shoes_scrape.css("div .info_prodotto").text 
    all_shoes_select.split("QUICK VIEW")
    binding.pry
#    black_shoes_scrape = Nokogiri::HTML(open(black_shoes))
#    gold_shoes_scrape = Nokogiri::HTML(open( gold_shoes))
#    red_shoes_scrape = Nokogiri::HTML(open(red_shoes))
#    purple_shoes_scrape = Nokogiri::HTML(open(purple_shoes))
#    all_shoes_select = all_shoes.css("div .info_prodotto").text # this currently works 
#    all_shoes_select.split("QUICK VIEW") # this splits the contents of new_shoe (all shoes listed on first page of Aquazurra site into a comma separated array - not sorted by color,price,etc
##    page.css("a #colori_sel_2")
  end
  
 
  
  
  
  
  end
end 