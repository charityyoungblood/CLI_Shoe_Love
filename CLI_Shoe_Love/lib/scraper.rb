require 'pry'
require 'HTTParty'
require 'nokogiri'
require 'open-uri'
require 'watir'
require_relative './user_shoe_preferences.rb'

class Scraper 
  
  def black_shoes 
    
    browser = Watir::Browser.new

    browser.goto('https://www.aquazzura.com/en/boutique-online/woman')

    puts browser.title

    browser.close
    
    
##    page = HTTParty.get("https://www.aquazzura.com/en/boutique-online/woman/view-all.html?")
#    page = HTTParty.get("https://www.aquazzura.com/en/boutique-online/woman/view-all.html?colori=2")
#    binding.pry
#    page_scrape = Nokogiri::HTML(page)
##    page.css("a #colori_sel_2")
  end
  
  
  
  
  
  
  
end 