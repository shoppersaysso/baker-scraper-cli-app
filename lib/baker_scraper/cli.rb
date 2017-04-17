class BakerScraper::CLI


	def call
		puts "Welcome to the Joy the Baker Recipe Scraper!"
		list_categories
		menu
		goodbye
	end

	def list_categories
		puts "Enter a number of a recipe category, start over, or exit:"
		@categories = BakerScraper::Category.scrape_categories
		@categories.each.with_index(1) do |category, i|
			puts "#{i}. #{category}"
		end
	end

	def menu
		input = nil
		while input != "exit"
			input = gets.strip.downcase

			if input.to_i > 0
        		the_category = @categories[input.to_i-1]
        		puts "#{the_category} Recipes:"
        	elsif input == "start over"
        		list_categories
			else
				puts "That's not a valid category. Type start over or exit?" unless input == "exit"
			end
		end
	end

	def goodbye
		puts "Enjoy your recipe!"
	end

end