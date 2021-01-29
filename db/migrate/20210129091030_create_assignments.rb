class CreateAssignments < ActiveRecord::Migration[6.1]
  def change
    create_table :assignments do |t|
      t.integer :room_id
      t.integer :guest_id

      t.timestamps
    end
  end
end
