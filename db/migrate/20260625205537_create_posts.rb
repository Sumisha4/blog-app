class CreatePosts < ActiveRecord::Migration[8.1]
  def change
    create_table :posts do |t|
      t.string :title
      t.text :body
      t.boolean :published
      t.references :user, null: false, foreign_key: false

      t.timestamps
    end
  end
end
