class CreateCategoryUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :category_users do |t|
      t.references :user, foreign_key: true
      t.references :category, foreign_key: true

      t.timestamps
    end
  end
end
