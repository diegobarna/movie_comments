# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

movie = Movie.get_movies("casablanca").first
Movie.create movie

movie = Movie.get_movies("terminator").first
Movie.create movie

movie = Movie.get_movies("resplandor").first
Movie.create movie

movie = Movie.get_movies("persona").first
Movie.create movie