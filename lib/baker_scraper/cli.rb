class BakerScraper::CLI


	def call
		puts "Welcome to the Joy the Baker Recipe Scraper!"
		list_categories
		menu
		goodbye
	end

	def list_categories
		puts "Enter a number of a recipe category, start over, or exit:"
	end

	def menu
		input = nil
		while input != "exit"
			input = gets.strip.downcase
			case input
			when "1"
				puts "Breakfast Recipes"
			when "2"
				puts "Lunch Recipes"
			end
		end
	end

	def goodbye
		puts "Enjoy your recipe!"
	end

end