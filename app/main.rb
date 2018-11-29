load 'DBManager.rb'
require_relative './models/movie'

dbManager = DBManager.new
dbManager.establish_connection

print "Give me the title of the movie: "
title = gets.chomp

print "Give me the director of the movie: "
director = gets.chomp

movie = Movie.new(title: title, director: director)
movie.save!
puts "Saved movie!"

busqueda = Movie.find_by title: title

puts "title: #{busqueda.title}"
puts "director: #{busqueda.director}"

puts "Number of movies in your database: #{Movie.count}"
puts "Bye!"
