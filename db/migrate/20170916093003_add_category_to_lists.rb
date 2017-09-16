class AddCategoryToLists < ActiveRecord::Migration[5.0]
  def change
    add_reference :lists, :category, foreign_key: true, after: :user_id
  end
end
