class CreateReadingLists < ActiveRecord::Migration[7.0]
  def change
    create_table :reading_lists do |t|
      t.boolean :read
      t.belongs_to :books, index: true
      t.belongs_to :user, index: true

      t.timestamps
    end
  end
end
