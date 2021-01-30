require 'rails_helper'

RSpec.describe "Rooms", type: :request do
    context 'GET #index' do
        it 'returns a success respond' do
            get '/rooms'
            expect(response).to have_http_status(:success)
        end
    end
    context 'GET #show' do
        it 'returns a success respond' do
            room = Room.create!(number:'107',description:'1234567890')
            get '/rooms', params: {id: room.to_param}
            expect(response).to have_http_status(:success)
        end
    end

end
