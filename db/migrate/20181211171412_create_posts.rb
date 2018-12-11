class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.column :topic_id, :integer
      t.column :description, :string
      t.column :title, :string
      t.column :url, :string
      t.timestamps
    end
  end
end
