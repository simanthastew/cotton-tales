Category.create(name: "cute")
Categorization.create(category_id: 1, article_id: 1)

User.delete_all

users = 50.times.map do
  User.create!( username: Faker::Internet.user_name,
                password: "password"
                )
end

