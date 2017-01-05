require 'rails_helper'

feature "visiting the categories page" do
  scenario "the user sees all the categories" do
    category = Category.create(:name => "Cute")
    visit('/categories')
    expect(page).to have_content 'Cute'
  end
end

feature "visiting the categories page" do
  scenario "the user sees all the articles under a category" do
    category = Category.create(:name => "Cute")
    visit("/categories/#{category.id}")
    expect(page).to have_content 'Cute'
    expect(page).to have_content 'All Categories'
  end
end

feature "visiting the categories page" do
  scenario "the user sees all the articles under a category" do
    category = Category.create(:name => "Cute")
    user = User.create(username: "emily", password: "password")
    category.articles.create!(title: "Sweeet", body: "body test", author_id: user.id)
    visit("/categories/#{category.id}")
    expect(page).to have_content "Sweeet"
    expect(page).to have_content 'All Categories'
  end
end