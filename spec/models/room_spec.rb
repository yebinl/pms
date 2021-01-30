require 'rails_helper'

RSpec.describe Room, type: :model do
  context 'validation test' do
    it 'ensures number presence' do
      room = Room.new(description:'1234567890').save
      expect(room).to eq(false)
    end
    it 'ensures description can be null' do
      room = Room.new(number:'109').save
      expect(room).to eq(true)
    end
    it 'should save successfully' do
      room = Room.new(number:'107',description:'1234567890').save
      expect(room).to eq(true)
    end
  end
end
