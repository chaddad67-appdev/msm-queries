class ActorsController < ActionController::Base

  def index
    @list_of_actors = Actor.all

    render({ :template => "actor_templates/index.html.erb"})
  end

  def actor_detail
    act_id = params.fetch("actor_id")
    @actor = Actor.where({:id => act_id}).at(0)
    characters = Character.where({ :actor_id => @actor.id})
    @movies = Array.new
    characters.each do |charac|
      @movies.push(Movie.where({:id => charac.movie_id}).at(0))
    end
    render({ :template => "actor_templates/actor_details.html.erb"})
  end
end
