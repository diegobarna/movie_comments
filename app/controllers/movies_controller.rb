class MoviesController < ApplicationController
  before_action :set_movie, only: [:show]

  # GET /movies/search
  def search
    @movie = Movie.new
    @errors = []
  end

  # GET /movies
  def index
    @movies = Movie.all
  end

  # GET /movies/1
  def show
    @comments = Comment.where('movie_id = ?', @movie.id)
  end

  # GET /movies/new
  def new
    @movie = Movie.find_by('title LIKE ?',"%#{params[:query]}%")
    if @movie.nil?
      @movies = Movie.get_movies params[:query]
      render :new
    else
      redirect_to @movie
    end
  end

  # POST /movies
  def create
    @movie = Movie.new(movie_params)
    if @movie.save
      redirect_to @movie
    else
      render :search
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_movie
      @movie = Movie.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def movie_params
      params.require(:movie).permit(:title, :poster, :year, :synopsis)
    end
end
