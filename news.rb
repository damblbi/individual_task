class Task
	def news(n)
		require 'rss'
		require 'open-uri'
		a = 0;
		url = 'https://lenta.ru/rss/news'
		open(url) do |rss|
			feed = RSS::Parser.parse(rss)
			puts "Title: #{feed.channel.title}"
			feed.items.each do |item|
				puts "Item: #{item.title}"
				a += 1
				if(a==n)
					break
				end
			end
		end
	end
end
