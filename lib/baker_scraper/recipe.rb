class BakerScraper::Recipe

	attr_accessor :title, :category, :recipe_url

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

  def self.recipe_url(category)
    category = category
    doc = Nokogiri::HTML(open("http://joythebaker.com/category/" + "#{@category}"))
    recipe_url = doc.css("[id^=post] > div > div > h1").map do |h1|
      h1.search('a').map { |a| a.values[0]}
    end
    recipe_url.flatten
  end


end


