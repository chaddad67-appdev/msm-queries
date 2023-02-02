class MoviesController < ActionController::Base

  def index
    @list_of_movies = Movie.all

    render({ :template => "movies_templates/index.html.erb"})
  end

  def movie_detail
    mov_id = params.fetch("movie_id")
    @film = Movie.where({:id => mov_id}).at(0)
    # @movies = Movie.where({ :director_id => @director.id})
    render({ :template => "movies_templates/movie_details.html.erb"})
  end
end
