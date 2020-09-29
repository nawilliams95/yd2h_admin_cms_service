class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.string :title
      t.string :content
      t.string :author, default "Nykarri Williams"
      t.string :img
      t.text :tags, array: true, default: []

      t.timestamps
    end
  end
end
