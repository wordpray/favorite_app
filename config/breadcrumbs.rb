crumb :root do
  link "Home", root_path
end

# favorite#about
crumb :about do
  link "About", about_path
  parent :root
end

# favorite#contact
crumb :contact do
  link "Contact", contact_path
  parent :root
end

# list#index
crumb :lists do
  link "Lists", lists_path
  parent :root
end

# list#show
crumb :show_list do |list|
  link list.title, list_path(list)
  parent :lists
end

# list#new
crumb :new_list do
  link "New List", new_list_path
  parent :lists
end
