get '/' do
  # Look in app/views/index.erb
  redirect '/categories'
end

#action index - displays all categories
get '/categories' do
  @categories = Category.all
  @selected_category = params[:categories]
  erb :index
end

#action index - displays all posts within a category
get '/categories/:posts' do
  p @posts = params[:posts]
  erb :category_posts_index
end
