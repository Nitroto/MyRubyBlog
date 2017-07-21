class CategoriesController < ApplicationController
  def index
    @categories = Category.all
  end

  def show
    @category = Category.find(category_params)
    @title = @category.name
    @posts = @category.posts
  end

  # def new
  #   @category = Category.new
  # end
  #
  # def create
  #   @category = Category.create(category_params)
  #   @category.save
  # end

  private
  def category_params
    params.require(:category).permit(:name)
  end
end
