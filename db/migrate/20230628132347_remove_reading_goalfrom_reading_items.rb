class RemoveReadingGoalfromReadingItems < ActiveRecord::Migration[7.0]
  def change
    remove_reference :reading_items, :reading_goal, index: false
  end
end
