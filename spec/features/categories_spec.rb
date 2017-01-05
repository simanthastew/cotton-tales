require 'rails_helper'

feature "visiting the categories page" do
  scenario "the user sees all the categories" do
    category = Category.create(:name => "Cute")
  # as a user i want to see all the categories on the categories page
    visit('/categories')
    expect(page).to have_content 'Cute'
  end
end

feature "visiting the categories page" do
  scenario "the user sees all the articles under a category" do
      #given a set posts in the db
    category = Category.create(:name => "Cute")
  # as a user i want to visit the category page
    visit("/categories/#{category.id}")
  # so that I can see the title of the page
    expect(page).to have_content 'Cute'
    expect(page).to have_content 'All Categories'
  end
end

feature "visiting the categories page" do
  scenario "the user sees all the articles under a category" do
    mock_model Article, {:title => "Cool article", :body => "body!"}
    category = Category.create(:name => "Cute")
    category.articles.create()
  # as a user i want to visit the category page
    visit("/categories/#{category.id}")
  # so that I can see the list of articles on the page

    expect(page).to have_content 'All Categories'
  end
end