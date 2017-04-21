class BakerScraper::Recipe

	attr_accessor :title, :category, :recipe_url



  def self.scrape_recipes(category)
    @category = category
    self.scrape
  end



  def self.scrape
    
    input = @category
    
    case @category
    
    when "Breakfast"
      doc = Nokogiri::HTML(open("http://joythebaker.com/category/breakfast/"))
      recipes = doc.css("[id^=post] > div > div > h1").map do |h1|
        h1.search('a').map { |a| a.text}
      end
        recipes.flatten
    when "Buttermilk"
        doc = Nokogiri::HTML(open("http://joythebaker.com/category/buttermilk-2/"))
        recipes = doc.css("[id^=post] > div > div > h1").map do |h1|
        h1.search('a').map { |a| a.text}
      end
        recipes.flatten
    when "Cakes"
      doc = Nokogiri::HTML(open("http://joythebaker.com/category/cakes/"))
      recipes = doc.css("[id^=post] > div > div > h1").map do |h1|
      h1.search('a').map { |a| a.text}
    end
        recipes.flatten
    when "Cookies"
      doc = Nokogiri::HTML(open("http://joythebaker.com/category/cookies/"))
      recipes = doc.css("[id^=post] > div > div > h1").map do |h1|
      h1.search('a').map { |a| a.text}
    end
        recipes.flatten
    when "Dinner"
      doc = Nokogiri::HTML(open("http://joythebaker.com/category/dinner/"))
      recipes = doc.css("[id^=post] > div > div > h1").map do |h1|
      h1.search('a').map { |a| a.text}
    end
        recipes.flatten
    when "Drinks"
      doc = Nokogiri::HTML(open("http://joythebaker.com/category/drinks/"))
      recipes = doc.css("[id^=post] > div > div > h1").map do |h1|
      h1.search('a').map { |a| a.text}
    end
        recipes.flatten
    when "Fruit"
      doc = Nokogiri::HTML(open("http://joythebaker.com/category/fruit/"))
      recipes = doc.css("[id^=post] > div > div > h1").map do |h1|
      h1.search('a').map { |a| a.text}
    end
        recipes.flatten
    when "Gluten-Free"
      doc = Nokogiri::HTML(open("http://joythebaker.com/category/gluten-free/"))
      recipes = doc.css("[id^=post] > div > div > h1").map do |h1|
      h1.search('a').map { |a| a.text}
    end
        recipes.flatten
    when "Healthy"
      doc = Nokogiri::HTML(open("http://joythebaker.com/category/healthy-2/"))
      recipes = doc.css("[id^=post] > div > div > h1").map do |h1|
      h1.search('a').map { |a| a.text}
    end
        recipes.flatten
    when "Pie"
      doc = Nokogiri::HTML(open("http://joythebaker.com/category/pie/"))
      recipes = doc.css("[id^=post] > div > div > h1").map do |h1|
      h1.search('a').map { |a| a.text}
    end
        recipes.flatten
    when "Savory"
      doc = Nokogiri::HTML(open("http://joythebaker.com/category/savory/"))
      recipes = doc.css("[id^=post] > div > div > h1").map do |h1|
      h1.search('a').map { |a| a.text}
    end
        recipes.flatten
    when "Vegan"
      doc = Nokogiri::HTML(open("http://joythebaker.com/category/vegan/"))
      recipes = doc.css("[id^=post] > div > div > h1").map do |h1|
      h1.search('a').map { |a| a.text}
    end
        recipes.flatten
    end



  end

  def self.recipe_url(category)

    input = @category

    case @category

    when "Breakfast"
      doc = Nokogiri::HTML(open("http://joythebaker.com/category/breakfast)"))
      recipe_url = doc.css("[id^=post] > div > div > h1").map do |h1|
        h1.search('a').map { |a| a.values[0]}
      end
      recipe_url.flatten
    when "Buttermilk"
      doc = Nokogiri::HTML(open("http://joythebaker.com/category/buttermilk-2)"))
      recipe_url = doc.css("[id^=post] > div > div > h1").map do |h1|
        h1.search('a').map { |a| a.values[0]}
      end
      recipe_url.flatten
    when "Cakes"
      doc = Nokogiri::HTML(open("http://joythebaker.com/category/cakes/"))
     recipe_url = doc.css("[id^=post] > div > div > h1").map do |h1|
        h1.search('a').map { |a| a.values[0]}
      end
      recipe_url.flatten
    when "Cookies"
      doc = Nokogiri::HTML(open("http://joythebaker.com/category/cookies/"))
     recipe_url = doc.css("[id^=post] > div > div > h1").map do |h1|
        h1.search('a').map { |a| a.values[0]}
      end
      recipe_url.flatten
    when "Dinner"
      doc = Nokogiri::HTML(open("http://joythebaker.com/category/dinner/"))
     recipe_url = doc.css("[id^=post] > div > div > h1").map do |h1|
        h1.search('a').map { |a| a.values[0]}
      end
    recipe_url.flatten
    when "Drinks"
      doc = Nokogiri::HTML(open("http://joythebaker.com/category/drinks/"))
     recipe_url = doc.css("[id^=post] > div > div > h1").map do |h1|
        h1.search('a').map { |a| a.values[0]}
      end
      recipe_url.flatten
    when "Fruit"
      doc = Nokogiri::HTML(open("http://joythebaker.com/category/fruit/"))
     recipe_url = doc.css("[id^=post] > div > div > h1").map do |h1|
        h1.search('a').map { |a| a.values[0]}
      end
    recipe_url.flatten
    when "Gluten-Free"
      doc = Nokogiri::HTML(open("http://joythebaker.com/category/gluten-free/"))
     recipe_url = doc.css("[id^=post] > div > div > h1").map do |h1|
        h1.search('a').map { |a| a.values[0]}
      end
      recipe_url.flatten
    when "Healthy"
      doc = Nokogiri::HTML(open("http://joythebaker.com/category/healthy-2/"))
     recipe_url = doc.css("[id^=post] > div > div > h1").map do |h1|
        h1.search('a').map { |a| a.values[0]}
      end
      recipe_url.flatten
    when "Pie"
      doc = Nokogiri::HTML(open("http://joythebaker.com/category/pie/"))
      recipe_url = doc.css("[id^=post] > div > div > h1").map do |h1|
        h1.search('a').map { |a| a.values[0]}
      end
      recipe_url.flatten
    when "Savory"
      doc = Nokogiri::HTML(open("http://joythebaker.com/category/savory/"))
       recipe_url = doc.css("[id^=post] > div > div > h1").map do |h1|
        h1.search('a').map { |a| a.values[0]}
      end
      recipe_url.flatten
    when "Vegan"
      doc = Nokogiri::HTML(open("http://joythebaker.com/category/vegan/"))
       recipe_url = doc.css("[id^=post] > div > div > h1").map do |h1|
        h1.search('a').map { |a| a.values[0]}
      end
      recipe_url.flatten
    end
  end


 # def self.recipe_url(category)
 #   doc = Nokogiri::HTML(open("http://joythebaker.com/recipe-index-2/"))
 #   links = *doc.search("body > div.content-block.recipe-index a").map do |a|
 #     [
 #       a['href']
 #       ]
 #     end
 #     links.delete_if.include?("wp-content")
 #     links.uniq.flatten
      #binding.pry
 #   end




end

