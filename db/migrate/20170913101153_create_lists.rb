class CreateLists < ActiveRecord::Migration[5.0]
  def change
    create_table :lists do |t|
      t.text :title, null: false
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
