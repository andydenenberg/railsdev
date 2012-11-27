class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.text :title
      t.text :body
      t.integer :category
      t.references :user

      t.timestamps
    end
    add_index :posts, :user_id
  end
end
