class TagsController < ApplicationController
  def name
    @tag = Tag.find_by_tag(params[:name])
  end
end
