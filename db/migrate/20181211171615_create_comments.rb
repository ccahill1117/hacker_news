class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.column :post_id, :integer
      t.column :author, :string
      t.column :text, :string
      t.timestamps
    end
  end
end
