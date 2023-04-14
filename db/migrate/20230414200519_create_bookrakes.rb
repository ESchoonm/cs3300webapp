class CreateBookrakes < ActiveRecord::Migration[6.1]
  def change
    create_table :bookrakes do |t|
      t.drop :db
      t.string :Book

      t.timestamps
    end
  end
end
