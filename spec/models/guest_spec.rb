require 'rails_helper'

RSpec.describe Guest, type: :model do
  context 'validation test' do
    it 'ensures name presence' do
      guest = Guest.new(phone:'1234567890').save
      expect(guest).to eq(false)
    end
    it 'ensures number presence' do
      guest = Guest.new(name:'eric').save
      expect(guest).to eq(false)
    end
    it 'should save successfully' do
      guest = Guest.new(name:'eric',phone:'1234567890').save
      expect(guest).to eq(true)
    end
  end

end
