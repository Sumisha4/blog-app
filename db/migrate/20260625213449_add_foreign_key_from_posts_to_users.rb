class AddForeignKeyFromPostsToUsers < ActiveRecord::Migration[8.1]
  def change
    add_foreign_key :posts, :users
  end
end
