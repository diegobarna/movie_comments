class Movie < ApplicationRecord

  Tmdb::Api.key("3839ff582cb557887f109e2430210268")
  def self.get_movies(query)
    list = Tmdb::Movie.find(query)
    list.delete_if do |movie|
      movie.poster_path.nil?
    end
    list.sample(20).map! do |movie|
      title = movie.title
      poster = "https://image.tmdb.org/t/p/w500" + movie.poster_path
      year = movie.release_date.first(4)
      synopsis = movie.overview
      {title: title, poster: poster, year: year, synopsis: synopsis}
    end
  end
end
