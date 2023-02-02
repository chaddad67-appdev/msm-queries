class ApplicationController < ActionController::Base
  def homepage
    render({ :template => "misc_templates/home.html.erb"})
  end
end
