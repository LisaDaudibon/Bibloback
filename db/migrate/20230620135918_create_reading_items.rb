class CreateReadingItems < ActiveRecord::Migration[7.0]
  def change
    create_table :reading_items do |t|
      t.boolean :read

      belongs_to :book, index: true
      belongs_to :reading_goal, index: true
      belongs_to :reading_list, index: true

      t.timestamps
    end
  end
end
