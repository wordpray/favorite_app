User.create!(nickname: "ysk",
             name:  "yamada",
             email: "yamada@sample.com",
             password:              "12345678",
             password_confirmation: "12345678")

#ユーザー
99.times do |n|
  name     = Faker::Name.name
  nickname = Faker::Pokemon.name
  email    = "example-#{n}@sample.com"
  password = "12345678"

  User.create!(nickname: nickname,
               name:  name,
               email: email,
               password:              password,
               password_confirmation: password)
end

users = User.order(:created_at).take(6)

#リスト
50.times do |n|
  title = "list#{n}"
  users.each do |user|
    user.lists.create!(title: title)
  end
end

lists = List.order(:created_at).take(6)

#リンク

50.times do |n|
  title = "link#{n}"
  url   = "#"
  users.each do |user|
    lists.each do |list|
      list.links.create!(title: title, url: url, user_id: user.id)
    end
  end
end


