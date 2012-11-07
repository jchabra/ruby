# Create a class called Crawler

class Crawler 
	attr_accessor :url

# there will be an initialize method
# initialize( url )
# @url = url
	def initialize (u)
		@url = u
		@web = w
	end
end

#c1 = Crawler.new("http://cnn.com")
c1 = Crawler.new("http://www.nytimes.com/")

# parse #@web = HTTParty.get(@url) #WHAT IS THIS? AND WHY ARE WE DOING IT?
	w = HTTParty.get(@url)

#c1.parse => now it contiains all of the html from this url 
	c = w.split
	c.map {|w| puts w.upcase}

#c1.words = need to figure out the number of words on the page ----> .split.count array
	number = w.count

#c1.url = should be able to tell you how what the url is

#c1.vowels --> number 
	vowels = w.count letters ('a', 'e', 'i', 'o', 'u')

#c1.consenants ------> no special characters, letters minus vowels --> number

#c1.obama ---> how many times was obama used on this website?
	obama = w.count("Obama")

#c1.romney ---> how many times was romney used on this website?
	romney = w.count("Romney")

#c1.histogram -_> basically a {hash} = it has keys and values; 
				# EXAMPLE: a = 100, the = 250, hello = 175, obama = 300, romney = 1000, etc..... --> 
				# how many times each word on the website used? Sort it by the word most frequently used

#search for RUBY Enumerables : ruby-doc-org/

