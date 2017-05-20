class CreatePosts < ActiveRecord::Migration[5.0]
  def change
    create_table :posts do |t|
      t.string :title
      t.string :body
      t.string :cover_image

      t.timestamps null: false
    end
  end
end
