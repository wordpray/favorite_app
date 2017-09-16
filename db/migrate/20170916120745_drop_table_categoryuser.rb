class DropTableCategoryuser < ActiveRecord::Migration[5.0]
  def change
    drop_table :category_users
  end
end
