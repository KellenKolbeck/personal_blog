class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.column :comment_body, :string
      t.column :user_id, :integer
      t.column :post_id, :integer

      t.timestamps
    end
  end
end
