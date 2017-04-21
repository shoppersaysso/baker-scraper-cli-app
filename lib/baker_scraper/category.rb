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







  end
