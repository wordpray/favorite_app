class AddGenreToLists < ActiveRecord::Migration[5.0]
  def change
    add_reference :lists, :genre, foreign_key: true, after: :category_id
  end
end
