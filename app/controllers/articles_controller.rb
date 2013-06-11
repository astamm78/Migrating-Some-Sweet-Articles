class ArticlesController < ApplicationController

  def redirect
    title = params[:title]
    article = Article.find_by_title(title.gsub(/-/, " ").titleize)
    redirect_to "/categories/#{article.category.title}/articles/#{title}"
  end

  def single
    title = params[:title]
    @article = Article.find_by_title(title.gsub(/-/, " ").titleize)
    @tags = @article.tags
  end

  def index
    @categories = Category.all
  end
end
