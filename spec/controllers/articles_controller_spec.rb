require 'rails_helper'

describe ArticlesController do
  let(:sample_article) { Article.create(title: "test", body: "test body", author_id: 1) }

  describe "GET #index" do
    before(:each) do
      get :index
    end
    it "responds with status code 200" do
      expect(response).to have_http_status 200
    end
    it "assigns all the articles to @articles" do
      expect(assigns(:articles)).to eq(Article.all)
    end
    it "renders the :index template" do
      expect(response).to render_template(:index)
    end
  end

  describe "GET #show" do
    before(:each) do
      get :show, {id: sample_article.id}
    end

    it "responds with status 200" do
      expect(response).to have_http_status 200
    end

    it "assigns the correct article as @article" do
      expect(assigns(:article)).to eq(sample_article)
    end

    it "renders the show template" do
      expect(response).to render_template(:show)
    end
  end

  describe "GET #edit" do
    before(:each) do
      get :edit, {id: sample_article.id}
    end

    it "responds with status 200" do
      expect(response).to have_http_status 200
    end
    it "assigns the correct article as @article" do
      expect(assigns(:article)).to eq(sample_article)
    end
    it "renders the show template" do
      expect(response).to render_template(:edit)
    end
  end

  describe "GET #new" do
    before(:each) do
      get :new
    end

    it "responds with status 200" do
      expect(response).to have_http_status 200
    end

    it "renders the show template" do
      expect(response).to render_template(:edit)
    end
  end
end
