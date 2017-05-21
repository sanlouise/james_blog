class PostsController < ApplicationController
  before_action :find_post, only: %i[edit update show destroy]
  before_action :authenticate_admin!, except: %i[index show]

  # Index action to render all posts
  def index
    @posts = Post.all.order('created_at DESC').paginate(:page => params[:page], :per_page => 8)
  end

  # New action for creating post
  def new
    @post = Post.new
  end

  # Create action saves the post into database
  def create
    @post = Post.new(post_params)
    if @post.save
      flash[:notice] = 'Successfully created post!'
      redirect_to post_path(@post)
    else
      flash[:alert] = 'Error creating new post!'
      render :new
    end
  end

  # Edit action retrives the post and renders the edit page
  def edit; end

  # Update action updates the post with the new information
  def update
    if @post.update_attributes(post_params)
      flash[:notice] = 'Successfully updated post!'
      redirect_to post_path(@posts)
    else
      flash[:alert] = 'Error updating post!'
      render :edit
    end
  end

  # The show action renders the individual post after retrieving the the id
  def show
    @featured_posts = Post.all.shuffle.take(7)
  end

  # The destroy action removes the post permanently from the database
  def destroy
    puts '*'*60
    puts @post
    puts '*'*60
    if @post.destroy
      flash[:notice] = 'Successfully deleted post!'
      redirect_to posts_path
    else
      flash[:alert] = 'Error updating post!'
    end
  end

  private

  def post_params
    params.require(:post).permit(:title, :body, :cover_image)
  end

  def find_post
    @post = Post.find(params[:id])
  end
end
