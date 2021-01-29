class AddGuestIdToRooms < ActiveRecord::Migration[6.1]
  def change
    add_column :rooms, :guest_id, :integer
    add_index :rooms, :guest_id
  end
end
