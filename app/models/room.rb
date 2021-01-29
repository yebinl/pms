class Room < ApplicationRecord
    has_one :assignment
    has_one :guest, through: :assignment
    attribute :assigned, :boolean, default: false
end