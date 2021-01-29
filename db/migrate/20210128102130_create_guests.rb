class CreateGuests < ActiveRecord::Migration[6.1]
  def change
    create_table :guests do |t|
      t.string :name
      t.string :phone
      t.boolean :assigned

      t.timestamps
    end
  end
end
