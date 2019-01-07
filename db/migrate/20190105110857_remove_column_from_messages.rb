class RemoveColumnFromMessages < ActiveRecord::Migration[5.2]
  def change
    remove_column :messages, :image, :text
    remove_column :messages, :movie, :text
  end
end
