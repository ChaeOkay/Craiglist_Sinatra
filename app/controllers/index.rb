get '/' do
  # Look in app/views/index.erb
  erb :index
end

#action index - displays all categories
get '/categories' do
end

#action index - displays all posts within a category
get '/categories/posts' do
end
