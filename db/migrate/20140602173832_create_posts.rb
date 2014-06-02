class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.references :category, index: true
      t.string :title
      t.string :email
      t.decimal :price
      t.text :description
      t.string :key

      t.timestamps
    end
  end
end
