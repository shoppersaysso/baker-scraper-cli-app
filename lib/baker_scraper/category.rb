class BakerScraper::Category

	attr_accessor :category

	def self.scrape_categories
		self.scrape
	end

	def self.scrape
		doc = Nokogiri::HTML(open("http://joythebaker.com/recipe-index-2/"))
		categories = doc.css("h1.script").map do |script| 
			script.search('a').map { |a| a.text}
		end
		categories.flatten
	end

<<<<<<< HEAD


 	def self.url_scrape
 		doc = Nokogiri::HTML(open("http://joythebaker.com/recipe-index-2/"))
 		links = *doc.search("body > div.content-block.recipe-index a").map do |a|
 			[
 				a['href']
   			]
   		end
   		links.uniq.flatten
   	end



  end
=======
  end


  # http://stackoverflow.com/questions/15661125/web-scraping-with-nokogirihtml-and-ruby-how-to-get-output-into-an-array
 	
 	 #require 'nokogiri'

	# doc = Nokogiri::HTML(html)
	#data = doc.search('.compatible_vehicles li').map{ |li|
	#  li.search('p').map { |p| p.text }
	#}
>>>>>>> 289c7c40c3ace8428d9fb59ea98a5be5c744876e
