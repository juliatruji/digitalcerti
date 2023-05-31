require 'rails_helper'

RSpec.describe('API requests for Authentications', type: :request) do
  path '/authentications' do
    post 'Autenticacion' do
      tags 'Autenticación'
      consumes 'multipart/form-data'
      parameter in: :body, schema: {
        type: :object,
        properties: {
          email: { type: :string, description: 'Correo Electrónico' },
          password: { type: :string, format: :password, description: 'Contraseña' },
        },
        required: ['email', 'password']
      }

      produces 'application/json'

      response '200', 'Autenticación correcta' do
        schema type: 'object',
               properties: {
                 token_type: { type: 'string' },
                 access_token: { type: 'string' }
               }
        run_test!
      end
    end
  end
  describe 'return unauthorized if dont send email and password' do
    before { post('/api/v1/authentications') }

    it do
      expect(JSON.parse(response.body)['status']).not_to be_empty
    end

    it { expect(JSON.parse(response.body)['message']).not_to be_empty }
    it { expect(response).to have_http_status(:unauthorized) }
  end

  describe 'with user and password' do
    context 'when user is invalid' do
      let(:password) { Faker::Internet.password }
      let(:email) { Faker::Internet.email }

      before do
        post('/api/v1/authentications', params: { email: email, password: password })
      end

      it { expect(JSON.parse(response.body)['errors']).not_to be_empty }
      it { expect(JSON.parse(response.body)['status']).not_to be_empty }
      it { expect(JSON.parse(response.body)['message']).not_to be_empty }
      it { expect(response).to have_http_status(:unauthorized) }
    end

    context 'when user is valid' do
      let(:password) { Faker::Internet.password }
      let(:user) { create(:user, password: password) }

      before do
        post('/api/v1/authentications', params: { email: user.email, password: password })
      end

      it { expect(JSON.parse(response.body)['access_token']).not_to be_empty }
      it { expect(JSON.parse(response.body)['token_type']).to eq('Bearer') }
      it { expect(response).to have_http_status(:ok) }
    end

  end
end
