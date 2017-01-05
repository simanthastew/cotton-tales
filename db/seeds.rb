User.delete_all


users = 50.times.map do
  User.create!( username: Faker::Internet.user_name,
                password: "password"
                )
end
