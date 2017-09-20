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

# categories = Category.order(:created_at).take(5)

# リスト
# 10.times do |n|
#   description = "説明文#{n}"
#   categories.each do |category|
#     title = Faker::Zelda.character
#     user.lists.create!(title: title, description: description, category_id: category.id)
#   end
# end

# lists = List.order(:created_at).take(50)

# #リンク

# 15.times do |n|
#   url   = "#"
#     lists.each do |list|
#       title = Faker::Zelda.character
#       list.links.create!(title: title, url: url, user_id: user.id)
#   end
# end

=begin
[
["エンターテインメント", "エンターテイメント（エンタメ）に関するリスト。芸能人やタレントの情報、ニュースをはじめ、映画や音楽、コミック・アニメなどの公式サイトや情報サイト、ファンサイト、イベントの情報、大人向けのアダルトなど。"],
["メディア|ニュース", "メディア|ニュースに関するリスト。新聞、ネットニュース、ブログなど。"],
["趣味｜スポーツ", "メジャーからマイナーまで、あらゆる競技の情報のリスト。ゲームや各種コレクションなど、多様なジャンルのサイト、旅行、観光、アウトドア、ギャンブルなど。
"],
["ビジネス｜経済", "ショッピングサイトや企業サイトなどのビジネスに関するリスト、国際経済、企業経営などの経済活動に関するリスト。
"],
["各種資料｜情報源
", "各種資料や情報源に関するリスト。ブログ、SNSなど。
"],
["生活｜文化
", "生活や文化」に関するリスト
"],
["芸術｜人文
", "芸術や人文」に関するリスト。
"],
["コンピュータ｜インターネット
", "コンピュータやインターネットに関するリスト。
"],
["健康｜医学
", "「病気、症状」「処置、治療法」「健康管理」など関するリスト。
"],
["教育
", "「教育」に関するリスト。
"],
["政治
", "「政治」に関するリスト。
"],
["自然科学｜自然科学と技術
", "「自然科学と技術」に関するリスト。
"],
["社会科学
", "「社会科学」に関するリスト。
"],
["地域情報
", "都道府県や世界の国など、地域に関するリスト。
"]
]

=end


#カテゴリ
arry.length.times do |n|
  Genre.create!(name: arry[n][0], description: arry[n][1] )
end
