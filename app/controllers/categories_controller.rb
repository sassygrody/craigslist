class CategoriesController < ApplicationController
  def index
    @categories = Category.all
  end

  def show
    @category = Category.find_by_id(params[:id])
    @posts = @category.posts
  end

  def new

  end

  def create

  end

  def edit
  end

  def update
  end

  def destroy
  end

end
