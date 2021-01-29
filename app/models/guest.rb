class Guest < ApplicationRecord
    has_one :assignment
    has_one :room, through: :assignment
    attribute :assigned, :boolean, default: false
end
