class PostsController < ApplicationController
  def index
  end



  def new
    @post = Post.new
  end

  def create
    @category = Category.find_by_id(params[:category_id])
    @post = @category.posts.new(post_params)
    @post.key = SecureRandom.hex(3)
    @post.save

    redirect_to [@category, @post, :key => @post.key]
  end

  def show
    @category = Category.find_by_id(params[:category_id])
    @post = Post.find_by_id(params[:id])
    if params[:key]
      @key = params[:key]
    end
  end

  def edit
    @post = Post.find_by_id(params[:id])


    if @post.key != params[:key]
      redirect [@category, @post]
    end
  end

  def update
    @category = Category.find_by_id(params[:category_id])
    @post = Post.find_by_id(params[:id])
    @post.update_attributes(post_params)

    redirect_to [@category, @post]
  end

  def destroy
  end

  private
    def post_params
      params.require(:post).permit(:title, :email, :price, :description)
    end
end
