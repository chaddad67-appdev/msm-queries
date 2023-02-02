class DirectorsController < ActionController::Base

  def index
    @list_of_directors = Director.all

    render({ :template => "director_templates/index.html.erb"})
  end

  def eldest
    @list_of_directors = Director.all
    @older = @list_of_directors.where.not( :dob => nil).order({ :dob => :asc}).at(0)
    render({ :template => "director_templates/eldest_director.html.erb"})
  end

  def youngest
    @list_of_directors = Director.all
    @younger = @list_of_directors.where.not( {:dob => nil }).order({ :dob => :desc}).at(0)
    render({ :template => "director_templates/youngest_director.html.erb"})
  end

  def director_bio
    dic_id = params.fetch("director_id")
    @director = Director.where({:id => dic_id}).at(0)
    @movies = Movie.where({ :director_id => @director.id})
    render({ :template => "director_templates/director_bio.html.erb"})
  end
end
