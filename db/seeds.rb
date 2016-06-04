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

100.times do (
  Following.create(
    follower_id: rand(1..20),
    followee_id: rand(1..20)
    )
  )
end

36.times do (
  Tweet.create(
    body: Faker::Hipster.sentence,
    user_id: rand(1..20)
    )
  )
end

1000.times do (
  Like.create(
    tweet_id: rand(1..100)
    )
  )
end

User.create(
  first_name: Brian,
    last_name: Chung,
    user_name: bc123,
    image:
    password: "123"
)
User.create(
  first_name: Hank,
    last_name: Chen,
    user_name: hc123
    image:
    password: "123"
)
User.create(
  first_name: Shin,
    last_name: Wang,
    user_name: sw123
    image:
    password: "123"
)
User.create(
  first_name: Chris,
    last_name: Lamkins,
    user_name: cl123
    image:
    password: "123"
)
User.create(
  first_name: John,
    last_name: M,
    user_name: jm123
    image:
    password: "123"
)
