require 'pry'
require 'nokogiri'
require 'open-uri'

require_relative './user_shoe_preference.rb'

class Scraper 
  
  def black_shoes 
    doc = Nokogiri::HTML(open("https://www.aquazzura.com/en/boutique-online/woman/view-all.html?"))
    binding.pry
    doc.css("#colori_sel_2").text
  end
  
  
  
  
  
  
  
end 