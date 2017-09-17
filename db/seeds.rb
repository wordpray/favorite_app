User.create!(nickname: "ysk",
             name:  "yamada",
             email: "yamada@sample.com",
             password:              "12345678",
             password_confirmation: "12345678")

#ユーザー
30.times do |n|
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

user = User.first

#カテゴリ
5.times do |n|
  title = Faker::Zelda.game
    user.categories.create!(title: title)
end

categories = Category.order(:created_at).take(5)

#リスト
10.times do |n|
  description = "説明文#{n}"
  categories.each do |category|
    title = Faker::Zelda.character
    user.lists.create!(title: title, description: description, category_id: category.id)
  end
end

lists = List.order(:created_at).take(50)

#リンク

15.times do |n|
  url   = "#"
    lists.each do |list|
      title = Faker::Zelda.character
      list.links.create!(title: title, url: url, user_id: user.id)
  end
end


