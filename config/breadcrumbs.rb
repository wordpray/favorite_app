crumb :root do
  link "Home", root_path
end

# favorites#about
crumb :about do
  link "About", about_path
  parent :root
end

# favorites#contact
crumb :contact do
  link "Contact", contact_path
  parent :root
end

# genres#show
crumb :show_genre do |genre|
  link genre.name, genre_path(genre)
  parent :root
end

# categories#show
crumb :show_category do |category|
  link category.title, category_path(category)
  parent :root
end

# categories#new
crumb :new_category do
  link "New Category", new_category_path
  parent :root
end

# lists#index
crumb :lists do
  link "Lists", lists_path
  parent :root
end

# lists#show
crumb :show_list do |list|
  link list.title, list_path(list)
  parent :lists
end

# lists#new
crumb :new_list do
  link "New List", new_list_path
  parent :lists
end

# lists#search
crumb :search_list do
  link "Search", search_lists_path
  parent :lists
end

# links#new
crumb :new_link do |list|
  link "New Link", new_list_link_path(list)
  parent :root
end

# users#show
crumb :show_user do |user|
  link user.nickname, user_path(user)
  parent :root
end
