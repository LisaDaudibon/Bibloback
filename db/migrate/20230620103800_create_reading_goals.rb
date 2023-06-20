class CreateReadingGoals < ActiveRecord::Migration[7.0]
  def change
    create_table :reading_goals do |t|
      t.integer :pages
      t.boolean :complete
      t.integer :rating
      t.date :start_date
      t.date :end_date

      t.belongs_to :books, index: true
      t.belongs_to :user, index: true

      t.timestamps
    end
  end
end
