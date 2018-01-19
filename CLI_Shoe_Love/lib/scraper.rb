require 'pry'
require 'HTTParty'
require 'nokogiri'
require 'open-uri'
require_relative './shoes.rb'

class Scraper 
  
  
  def get_black_shoes 
    black_shoes = HTTParty.get("https://www.aquazzura.com/en/boutique-online/woman/view-all.html?colori=2")
    black_shoes_scrape = Nokogiri::HTML(black_shoes)
  end 
    
  def get_purple_shoes
    purple_shoes = HTTParty.get("https://www.aquazzura.com/en/boutique-online/woman.html?colori=11")
    purple_shoes_scrape = Nokogiri::HTML(purple_shoes)
  end 
  
  def get_red_shoes
    red_shoes = HTTParty.get("https://www.aquazzura.com/en/boutique-online/woman.html?colori=12")
    red_shoes_scrape = Nokogiri::HTML(red_shoes)
  end 
  
  def get_nude_shoes
    nude_shoes = HTTParty.get("https://www.aquazzura.com/en/boutique-online/woman/view-all.html?colori=1")
    nude_shoes_scrape = Nokogiri::HTML(nude_shoes)
  end 
    
end 