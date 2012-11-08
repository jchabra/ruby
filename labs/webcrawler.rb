require 'httparty'
require 'pry'

# Create a class called Crawler

class Crawler 
	attr_accessor :url, :body, :words, :histogram #:body is a strong, :words is body split up

# there will be an initialize method
# initialize( url )
# @url = url
	def initialize (u)
		@url = u
		@histogram = Hash.new(0) #

		parse #parse is a method. This action is calling the parse. Parse goes out to the internet and grabs the body from the url(?)

		words.each{|w| @histogram[w.downcase] +=1 } #grab each word one at a time, which all goes into the variable 'w', 
													#then lowercase every word that came in (so the word count is more accurate).
													#After this line is done, all of the words and counts will show up. 
    	@histogram = @histogram.sort_by {|key, value| value}.reverse # this sorts the data, but because it automatically sorts 
    																 # it by ascending order, we want it descending
	end

	def word_count
		@words.count
	end

	def count_by_name(name)
		words.select{|w| w.downcase == name}.count #if this thing is true, then select the item. If it's not true, then don't select it. 
	end

	def obama
		count_by_name('obama')
	end

	def romney
		count_by_name('romney')
	end


end

# --------- INSTRUCTIONS ---------------

#c1 = Crawler.new("http://cnn.com")
# parse #@web = HTTParty.get(@url) 
#c1.parse => now it contiains all of the html from this url 
#c1.words = need to figure out the number of words on the page ----> .split.count array
#c1.url = should be able to tell you how what the url is
#c1.vowels --> number 
#c1.consenants ------> no special characters, letters minus vowels --> number
#c1.obama ---> how many times was obama used on this website?
#c1.romney ---> how many times was romney used on this website?
#c1.histogram -_> basically a {hash} = it has keys and values; 
				# EXAMPLE: a = 100, the = 250, hello = 175, obama = 300, romney = 1000, etc..... --> 
				# how many times each word on the website used? Sort it by the word most frequently used

#search for RUBY Enumerables : ruby-doc.org/

# ----------------------- Chyld's code ------------

# require 'httparty'
# require 'pry'

# class Crawler
#   attr_accessor :url, :body, :words, :histogram

#   def initialize(url)
#     @url = url
#     @histogram = Hash.new(0)

#     parse

#     words.each{|w| @histogram[w.downcase] +=1 }
#     @histogram = @histogram.sort_by {|key, value| value}.reverse
#   end

#   def parse
#     @body = HTTParty.get(@url)
#     @words = @body.split
#   end

#   def word_count
#     @words.count
#   end

#   def count_by_name(name)
#     words.select{|w| w.downcase == name}.count
#   end

#   def obama
#     count_by_name('obama')
#   end

#   def romney
#     count_by_name('romney')
#   end
# end

