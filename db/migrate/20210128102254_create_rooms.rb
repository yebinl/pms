class CreateRooms < ActiveRecord::Migration[6.1]
  def change
    create_table :rooms do |t|
      t.string :number
      t.string :description
      t.boolean :assigned

      t.timestamps
    end
  end
end
