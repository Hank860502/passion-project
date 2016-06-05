20.times do (
  User.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    user_name: Faker::Internet.user_name,
    image: Faker::Avatar.image,
    password: "123"
    )
  )
end

end

1000.times do (
  Like.create(
    tweet_id: rand(1..100)
    )
  )
end

User.create(
  first_name: Hank,
    last_name: Chen,
    user_name: hc123
    image:
    password: "123"
)

# hank = User.create(first_name: "hank", last_name: "chen", user_name: "hank123", password: "123")
# taiwan = Tour.create(tour_name: "taichung", price: 100, content: "is fun", time_needed: 5, comment_id: 1, country_id: 1, image_id: 1)
