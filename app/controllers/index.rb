get '/' do
  # Look in app/views/index.erb
  redirect '/categories'
end

#action index - displays all categories
get '/categories' do
  @categories = Category.all
  @selected_category = params[:categories]
  erb :index_categories
end

#action index - displays all posts within a category
get '/categories/:category_id' do
  category = Category.find(params[:category_id])
  @category = category.description
  @posts = category.posts
  erb :index_categories_posts
end

#action show - displays a specific post
get '/categories/posts/:post_id' do
  @post = Post.find(params[:post_id])
  @category = @post.category.description
  erb :show_post
end
