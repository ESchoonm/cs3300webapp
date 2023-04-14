class CreateBooks < ActiveRecord::Migration[6.1]
  def change
    create_table :books do |t|
      t.string :title
      t.string :author
      t.text :description
      t.string :genre
      t.string :string
      t.date :date_released
      t.string :book_in_series
      t.string :integer

      t.timestamps
    end
  end
end
