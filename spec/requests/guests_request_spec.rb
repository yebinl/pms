require 'rails_helper'

RSpec.describe "Guests", type: :request do
    context 'GET #index' do
        it 'returns a success respond' do
            get '/guests'
            expect(response).to have_http_status(:success)
        end
    end
    context 'GET #show' do
        it 'returns a success respond' do
            guest = Guest.create!(name:'eric',phone:'1234567890')
            get '/guests', params: {id: guest.to_param}
            expect(response).to have_http_status(:success)
        end
    end

end
