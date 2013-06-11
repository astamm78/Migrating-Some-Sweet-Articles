class CategoriesController < ApplicationController
  def name
    @category = Category.find_by_title(params[:name])
  end
end
