require 'nokogiri'
require 'open-uri'
require 'net/http'
require 'pry'

class Scraper

    def self.get_parks(url)
        doc = Nokogiri::HTML(open(url))
        binding.pry
        details = {
            doc.css("table.wikitable").css("tr th a[title]")[0].text #Acadia
            doc.css("table.wikitable").css("tr td a[title]")[0].text #Maine
        :difficulty => doc.css("div.trail-subheader span.difficulty-text").text.strip,
        :route => doc.css("div.mt-2#trail-stats-bar h3")[2].text.strip,
        }
        details 
    end
    
end 

Scraper.get_parks("https://en.wikipedia.org/wiki/List_of_national_parks_of_the_United_States")