require 'rails_helper'

RSpec.describe Assignment, type: :model do
  context 'validation test' do
    it 'ensures room_id presence' do
      assignment = Assignment.new(guest_id:'1').save
      expect(assignment).to eq(false)
    end
    it 'ensures guest_id presence' do
      assignment = Assignment.new(guest_id:'1').save
      expect(assignment).to eq(false)
    end
  end
  context 'existance test' do
    it 'should save successfully' do
      Room.new(number:'107',description:'1234567890').save
      Guest.new(name:'eric',phone:'1234567890').save
      assignment = Assignment.new(room_id:'1',guest_id:'1').save
      expect(assignment).to eq(true)
    end
    it 'ensure room_id not exist' do
      Guest.new(name:'daniel',phone:'1234567990').save
      assignment = Assignment.new(room_id:'1',guest_id:'1').save
      expect(assignment).to eq(false)
    end
    it 'ensure guest_id not exist' do
      Room.new(number:'109',description:'1234567890').save
      assignment = Assignment.new(room_id:'1',guest_id:'1').save
      expect(assignment).to eq(false)
    end
    it 'ensure room_id already assigned' do
      Room.new(number:'107',description:'1234567890').save
      Guest.new(name:'eric',phone:'1234567890').save
      Guest.new(name:'daniel',phone:'1234567990').save
      Assignment.new(room_id:'1',guest_id:'1').save
      assignment = Assignment.new(room_id:'1',guest_id:'2').save
      expect(assignment).to eq(false)
    end
    it 'ensure guest_id already assigned' do
      Room.new(number:'107',description:'1234567890').save
      Room.new(number:'109',description:'1234567890').save
      Guest.new(name:'eric',phone:'1234567890').save
      Assignment.new(room_id:'1',guest_id:'1').save
      assignment = Assignment.new(room_id:'2',guest_id:'1').save
      expect(assignment).to eq(false)
    end
  end
end
