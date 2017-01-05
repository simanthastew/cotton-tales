case Rails.env
when "production"
  Category.delete_all
  Category.create(name: "cute")
  Category.create(name: "fictional")
  Category.create(name: "irl")
when "development"
  User.delete_all

  users = 50.times.map do
    User.create!( username: Faker::Internet.user_name,
                  password: "password"
                  )
  end

  Article.create(title: "Peter Cottontail", body: "Peter Cottontail was a fictional rabbit created by author Beatrix Potter for the book 'Priar Rabbit'", author_id: rand(50))
  Article.create(title: "Jackrabbit", body: "Jackrabbit is a species of hare local to North America. An elusive creature, no one is sure what is the sound of their call.", author_id: rand(50))
  Article.create(title: "Bugs Bunny", body: "Bugs Bunny is a cartoon rabbit known for causing trouble for the noble Daffy Duck.", author_id: rand(50))

  Categorization.create(category_id: 2, article_id: 1)
  Categorization.create(category_id: 1, article_id: 1)
  Categorization.create(category_id: 3, article_id: 2)
  Categorization.create(category_id: 2, article_id: 3)
end
