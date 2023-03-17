class CreateBooks < ActiveRecord::Migration[6.1]
  def change
    create_table :books do |t|
      t.string :title
      t.text :description
      t.string :genre
      t.integer :date_released
      t.integer :book_in_series

      t.timestamps
    end
  end
end
