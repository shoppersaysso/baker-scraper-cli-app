class BakerScraper::CLI


	def call
		puts "Welcome to the Joy the Baker Recipe Scraper!".blue
		list_categories
		menu
		goodbye
	end

	def list_categories
		puts "Enter a number of a recipe category, start over, or exit:".yellow
		@categories = BakerScraper::Category.scrape_categories
		@categories.each.with_index(1) do |category, i|
			puts "#{i}. #{category}"
		end
	end

	  def list_recipes(the_category)
		puts "Enter a number of a recipe, start over, or back:".green
		@recipes = BakerScraper::Recipe.scrape_recipes(the_category)
		@recipe_url = BakerScraper::Recipe.recipe_url(the_category)
		@recipes.each.with_index(1) do |title, i|
			puts "#{i}. #{title}"
		end
		input = nil
		while input != "exit"
			input = gets.strip.downcase

			if input.to_i > 0
        		recipe_url = @recipe_url[input.to_i-1]
        		puts "#{recipe_url}"
        	elsif input == "start over"
        		list_categories
        	elsif input == "back"
        		list_categories
        	elsif input == "exit"
        		list_categories
  			else
				puts "That's not a valid recipe. Type start over, back, or exit?".red unless input == "exit"
			end
		end

	end

	def menu
		input = nil
		while input != "exit"
			input = gets.strip.downcase

			if input.to_i > 0
        		the_category = @categories[input.to_i-1]
        		puts "#{the_category} Recipes:"
        		list_recipes("#{the_category}")
        	elsif input == "start over"
        		list_categories
			else
				puts "That's not a valid category. Type start over or exit?".red unless input == "exit"
			end
		end
	end

	def goodbye
		puts "Enjoy your recipe!".blue
	end

end