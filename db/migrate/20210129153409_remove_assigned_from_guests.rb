class RemoveAssignedFromGuests < ActiveRecord::Migration[6.1]
  def change
    remove_column :guests, :assigned, :boolean
  end
end
