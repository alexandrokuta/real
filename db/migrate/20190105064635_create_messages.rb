class CreateMessages < ActiveRecord::Migration[5.2]
  def change
    create_table :messages do |t|
      t.text       :content
      t.text       :image
      t.text       :movie
      t.timestamps
    end
  end
end
