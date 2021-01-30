class Guest < ApplicationRecord
    validates :name, presence:true
    validates :phone, presence:true
    has_one :assignment
    has_one :room, through: :assignment
    attribute :assigned, :boolean, default: false
end
