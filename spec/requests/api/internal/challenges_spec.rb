require 'rails_helper'

RSpec.describe 'Api::Internal::ChallengesControllers', type: :request do
  describe 'GET /index' do
    let!(:challenges) { create_list(:challenge, 5) }
    let(:collection) { JSON.parse(response.body)['challenges'] }
    let(:params) { {} }

    def perform
      get '/api/internal/challenges', params: params
    end

    before do
      perform
    end

    it { expect(collection.count).to eq(5) }
    it { expect(response.status).to eq(200) }
  end

  describe 'POST /create' do
    let(:params) do
      {
        challenge: {
          title: 'Python Easy Challenge',
          stack: 'python',
          kind: 'challenge',
          difficulty: 'easy',
          description: 'Easy Challenge description',
          link: 'easy challenge link'
        }
      }
    end

    let(:attributes) do
      JSON.parse(response.body)['challenge'].symbolize_keys
    end

    def perform
      post '/api/internal/challenges', params: params
    end

    before do
      perform
    end

    it { expect(attributes).to include(params[:challenge]) }
    it { expect(response.status).to eq(201) }
  end

  describe 'GET /show' do
    let(:challenge) { create(:challenge) }
    let(:challenge_id) { challenge.id.to_s }

    let(:attributes) do
      JSON.parse(response.body)['challenge'].symbolize_keys
    end

    def perform
      get "/api/internal/challenges/#{challenge_id}"
    end

    before do
      perform
    end

    it { expect(response.status).to eq(200) }

    context 'with resource not found' do
      let(:challenge_id) { '666' }

      it { expect(response.status).to eq(404) }
    end
  end

  describe 'PUT /update' do
    let(:challenge) { create(:challenge) }
    let(:challenge_id) { challenge.id.to_s }

    let(:params) do
      {
        challenge: {
          title: 'Medium Html Homework',
          stack: 'html',
          kind: 'homework',
          difficulty: 'medium',
          description: 'Medium homework description',
          link: 'medium homework link'
        }
      }
    end

    let(:attributes) do
      JSON.parse(response.body)['challenge'].symbolize_keys
    end

    def perform
      put "/api/internal/challenges/#{challenge_id}", params: params
    end

    before do
      perform
    end

    it { expect(attributes).to include(params[:challenge]) }
    it { expect(response.status).to eq(200) }

    context 'with resource not found' do
      let(:challenge_id) { '666' }

      it { expect(response.status).to eq(404) }
    end
  end

  describe 'DELETE /destroy' do
    let(:challenge) { create(:challenge) }
    let(:challenge_id) { challenge.id.to_s }

    def perform
      get "/api/internal/challenges/#{challenge_id}"
    end

    before do
      perform
    end

    it { expect(response.status).to eq(200) }

    context 'with resource not found' do
      let(:challenge_id) { '666' }

      it { expect(response.status).to eq(404) }
    end
  end
end
