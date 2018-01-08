require 'pry'
require 'HTTParty'
require 'nokogiri'
require 'open-uri'

class Scraper 
  
  def black_shoes 
    
    page = HTTParty.get("https://www.aquazzura.com/en/boutique-online/woman/view-all.html?")
    binding.pry
#    page.css("a #colori_sel_2")
  end
  
  
  
  
  
  
  
end 