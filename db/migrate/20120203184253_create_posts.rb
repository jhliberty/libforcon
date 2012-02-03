class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.text :body
      t.string :category
      t.boolean :draft, :default => true
      t.boolean :published, :default => false
      t.date :published_at

      t.timestamps
    end
  end
end
