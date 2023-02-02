Rails.application.routes.draw do
  get("/", { :controller => "application", :action => "homepage" })

  get("/directors", { :controller => "directors", :action => "index" })
  get("/directors/eldest", { :controller => "directors", :action => "eldest" })
  get("/directors/youngest", { :controller => "directors", :action => "youngest" })
  # relevance of order, the dynamic route must be before the eldest because if not everything is flexible including eldest
  get("/directors/:director_id", { :controller => "directors", :action => "director_bio" })
  
  get("/movies", { :controller => "movies", :action => "index" })
  get("/movies/:movie_id", { :controller => "movies", :action => "movie_detail" })

  get("/actors", { :controller => "actors", :action => "index" })
  get("/actors/:actor_id", { :controller => "actors", :action => "actor_detail" })
  
end
