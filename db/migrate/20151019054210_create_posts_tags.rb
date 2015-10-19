class CreatePostsTags < ActiveRecord::Migration
  def change
    create_table :posts_tags do |t|
      t.coulmn :post_id, :integer
      t.column :tag_id, :integer

      t.timestamps
    end
  end
end
