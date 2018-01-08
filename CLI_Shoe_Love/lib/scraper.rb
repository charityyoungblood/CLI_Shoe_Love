require 'pry'
require 'HTTParty'
require 'nokogiri'
require 'open-uri'
require 'watir'

class Scraper 
  
  def black_shoes 
    
#    page = HTTParty.get("https://www.aquazzura.com/en/boutique-online/woman/view-all.html?")
    page = HTTParty.get("https://www.aquazzura.com/en/boutique-online/woman/view-all.html?colori=2")
    binding.pry
    page_scrape = Nokogiri::HTML(page)
#    page.css("a #colori_sel_2")
  end
  
  
  
  
  
  
  
end 