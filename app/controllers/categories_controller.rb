class CategoriesController < ApplicationController
  def index
    @categories = Category.all
  end

  def create
    Category.create(category_params)
    redirect_to :root
  end

  private

  def category_params
    params.permit(:name, :comment)
  end
end
