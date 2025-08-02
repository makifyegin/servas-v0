class CreateNews < ActiveRecord::Migration[8.0]
  def change
    create_table :news do |t|
      t.string :title
      t.text :content
      t.text :summary
      t.datetime :published_at
      t.string :category
      t.string :tags
      t.boolean :is_featured
      t.string :cover_image
      t.string :author_name
      t.integer :view_count

      t.timestamps
    end
  end
end
