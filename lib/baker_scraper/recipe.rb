class BakerScraper::Recipe

	attr_accessor :category

  def self.scrape_recipes(category)
    @category = category
    self.scrape
  end

  def self.scrape
    doc = Nokogiri::HTML(open("http://joythebaker.com/category/" + "#{@category}"))
    recipes = doc.css("[id^=post] > div > div > h1").map do |h1|
      h1.search('a').map { |a| a.text}
    end
    recipes.flatten
  end




end


