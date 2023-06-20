class CreateComments < ActiveRecord::Migration[7.0]
  def change
    create_table :comments do |t|
      t.text :comments

      belongs_to :user, index: true
      belongs_to :book, index: true
      t.timestamps
    end
  end
end
