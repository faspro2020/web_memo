class CategoriesController < ApplicationController
  def index
    @categories = Category.all
  end

  def create
    Category.create(category_params)
    @category = Category.new(category_params)
    @category.save
    redirect_to :root
  end

  private

  def category_params
    params.require(:category).parmit(:name, :comment)
  end
end
