class LinksController < ApplicationController
  def create
    @link = Link.create(link_params)
    redirect_to category_path(params[:category_id])
  end

  private
  def link_params
    params.require(:link).permit(:name, :url, :comment, :category_id)
  end
end