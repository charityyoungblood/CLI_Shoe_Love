require 'pry'
require 'HTTParty'
require 'nokogiri'
require 'open-uri'
require 'watir'
require_relative './user_shoe_preferences.rb'

class Scraper 
  
  def user_selections 
      self.get_courses .each do |post|
      course = Course.new
      course.title = post.css("h2").text
      course.schedule = post.css(".date").text
      course.description = post.css("p").text
      end 
    end 
  
  def get_shoes
    self.get_page.css(".post")
  end 
  
  def print_user_selections
    self.make_courses
    Course.all.each do |course|
      if course.title
        puts "Title: #{course.title}"
        puts "  Schedule: #{course.schedule}"
        puts "  Description: #{course.description}"
      end
  
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