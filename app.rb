require 'rubygems'
require 'compass'
# require 'thin'  # Uncomment here and in Gemfile for better performance in production, especially on Heroku

# If you're using bundler, you will need to add this
require 'bundler/setup'

require 'sinatra'
require 'sinatra/partial'

set :partial_template_engine, :erb

helpers do
  include ERB::Util
  alias_method :code, :html_escape  # For escaping and showing HTML code partials in the browser
end


puts "This is process #{Process.pid}"


# Wanna use Compass? Rock it!
# ------------------------------------------
configure do
  Compass.add_project_configuration(File.join(Sinatra::Application.root, 'config.rb'))
end

# at a minimum, the main sass file must reside within the ./views directory. here, we create a ./views/stylesheets directory where all of the sass files can safely reside.
# ------------------------------------------
get '/stylesheets/:name.css' do
  content_type 'text/css', :charset => 'utf-8'
  scss(:"../sass/#{params[:name]}", Compass.sass_engine_options )
end

get '/' do
  erb :index
end