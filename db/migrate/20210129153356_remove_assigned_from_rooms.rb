class RemoveAssignedFromRooms < ActiveRecord::Migration[6.1]
  def change
    remove_column :rooms, :assigned, :boolean
  end
end
