class RemoveGuestIdFromRooms < ActiveRecord::Migration[6.1]
  def change
    remove_index :rooms, :guest_id
    remove_column :rooms, :guest_id, :integer
  end
end
