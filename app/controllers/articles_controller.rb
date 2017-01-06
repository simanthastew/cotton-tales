class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def show
    @article = Article.find_by(id: params[:id])
  end

  def edit
    @article = Article.find_by(id: params[:id])
    @article = @article.update_article
  end

  def new
    @article = Article.new
  end

  def create

  end
end
