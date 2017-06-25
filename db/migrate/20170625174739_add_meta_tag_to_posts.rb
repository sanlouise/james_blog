class AddMetaTagToPosts < ActiveRecord::Migration[5.0]
  def change
    add_column :posts, :meta_tag, :string
  end
end
