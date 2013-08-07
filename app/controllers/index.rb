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

#action new - return an HTML form for creating a new post
get '/categories/:category/posts/new' do
  @category = params[:category]
  erb :create_post
end

#creates a new post in the database
post '/categories/:category/posts/new' do
  new_post = Post.create( {title: params[:title],
                  description: params[:description],
                  email: params[:email],
                  secure_email: "fjf8932983hiufewf28y9@craigslistjr.com",
                  rent: params[:rent],
                  area: params[:area],
                  key: "wzdzihu7832" } )
  category = Category.where(:description => params[:category]).first
  @post = Post.where(:title => params[:title])
  category.posts << @post
  redirect "/categories/#{category.id}"
end

#updates a specific post
put '/categories/posts/:post_id/:key' do
  #create authentication - does the key match?
  erb :update_post
end
