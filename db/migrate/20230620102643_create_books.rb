class CreateBooks < ActiveRecord::Migration[7.0]
  def change
    create_table :books do |t|
      t.string :title
      t.string :author
      t.text :description
      t.string :image_url
      t.integer :pages
      t.string :published_date
      t.string :category

      t.timestamps
    end
  end
end
