require 'rails_helper'

describe 'POST /v1/signin', type: :request do
  let(:user) { create(:user) }
  let(:url) { '/v1/signin' }
  let(:params) do
    {
      user: {
        email: user.email,
        password: user.password
      }
    }
  end

  context 'when params are correct' do
    before do
      post url, params: params
    end

    it 'returns 200' do
      expect(response).to have_http_status(200)
    end

    it 'returns JTW token in authorization header' do
      expect(response.headers['Authorization']).to be_present
    end

    it 'returns valid JWT token' do
      decoded_token = decoded_jwt_token_from_response(response)
      expect(decoded_token.first['sub']).to be_present
    end
  end

  context 'when login params are incorrect' do
    before { post url }

    it 'returns unathorized status' do
      expect(response.status).to eq 401
    end
  end
end

describe 'DELETE /v1/signout', type: :request do
  let(:url) { '/v1/signout' }

  it 'returns 204, no content' do
    delete url
    expect(response).to have_http_status(204)
  end
end