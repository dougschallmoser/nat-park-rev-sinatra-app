# require './config/environment'
# require 'open-uri'
# require 'net/http'

# class Scraper

#     URL = "https://en.wikipedia.org/wiki/List_of_national_parks_of_the_United_States"

#     def self.get_parks(url)
#         doc = Nokogiri::HTML(open(url))
#         details = {
#         :name => doc.css("div.trail-subheader span.difficulty-text").text.strip,
#         :state => doc.css("div.mt-2#trail-stats-bar h3")[2].text.strip,
#         }
#         details 
#     end

# end

# Scraper.get_parks("https://en.wikipedia.org/wiki/List_of_national_parks_of_the_United_States")