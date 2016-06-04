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

