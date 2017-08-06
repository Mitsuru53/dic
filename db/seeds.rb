#100.times do |n|
  # email = Faker::Internet.email
  # password = "password"
  # User.create!(email: email,
  #             password: password,
  #             )

#end

n = 1
while n <= 101
  Blog.create(
  title: "aaa",
  content: 'hoge',
  user_id: n
  )
  n += 1
end
