class Assignment < ApplicationRecord
    validates :room_id, presence:true, uniqueness: true
    validates :guest_id, presence:true, uniqueness: true
    belongs_to :room
    belongs_to :guest
end
