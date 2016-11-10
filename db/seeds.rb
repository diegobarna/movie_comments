# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Movie.create Movie.get_movies("casablanca").first
Movie.create Movie.get_movies("terminator").first
Movie.create Movie.get_movies("resplandor").first
Movie.create Movie.get_movies("persona").first

Comment.create(movie_id: 1, username: "Diego C.", text: "Very good movie! I like it very much.")
Comment.create(movie_id: 1, username: "Hater", text: "I hate this movie.")
Comment.create(movie_id: 3, username: "Hater", text: "It's not even scary. Shity movie.")
Comment.create(movie_id: 3, username: "Diego C.", text: "Not the best of Kubrick, but one of my favourite horror films.")
