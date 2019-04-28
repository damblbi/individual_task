require_relative 'news.rb'
puts "Введите колличество новостей: "
n = gets.to_i
task = Task.new()
task.news(n)

