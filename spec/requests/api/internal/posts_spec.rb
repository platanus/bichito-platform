require 'rails_helper'

RSpec.describe 'Api::Internal::PostsControllers', type: :request do
  describe 'GET /index' do
    let!(:posts) { create_list(:post, 5) }
    let(:collection) { JSON.parse(response.body)['posts'] }
    let(:params) { {} }

    def perform
      get '/api/internal/posts', params: params
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
        post: {
          title: 'Post title'
        }
      }
    end

    let(:attributes) do
      JSON.parse(response.body)['post'].symbolize_keys
    end

    def perform
      post '/api/internal/posts', params: params
    end

    before do
      perform
    end

    it { expect(attributes).to include(params[:post]) }
    it { expect { perform }.to change { Post.count }.by 1 }
    it { expect(response.status).to eq(201) }

    context 'with invalid attributes' do
      let(:params) do
        {
          post: {
            title: nil
          }
        }
      end

      it { expect(response.status).to eq(400) }
    end
  end

  describe 'GET /show' do
    let(:post) { create(:post) }
    let(:post_id) { post.id.to_s }

    let(:attributes) do
      JSON.parse(response.body)['post'].symbolize_keys
    end

    def perform
      get "/api/internal/posts/#{post_id}"
    end

    before do
      perform
    end

    it { expect(response.status).to eq(200) }

    context 'with resource not found' do
      let(:post_id) { '666' }

      it { expect(response.status).to eq(404) }
    end
  end

  describe 'PUT /update' do
    let(:post) { create(:post) }
    let(:post_id) { post.id.to_s }

    let(:params) do
      {
        post: {
          title: 'Post title'
        }
      }
    end

    let(:attributes) do
      JSON.parse(response.body)['post'].symbolize_keys
    end

    def perform
      put "/api/internal/posts/#{post_id}", params: params
    end

    before do
      perform
    end

    it { expect(attributes).to include(params[:post]) }
    it { expect(response.status).to eq(200) }

    context 'with invalid attributes' do
      let(:params) do
        {
          post: {
            title: nil
          }
        }
      end

      it { expect(response.status).to eq(400) }
    end

    context 'with resource not found' do
      let(:post_id) { '666' }

      it { expect(response.status).to eq(404) }
    end
  end

  describe 'DELETE /destroy' do
    let!(:post) { create(:post) }
    let(:post_id) { post.id.to_s }

    def perform
      delete "/api/internal/posts/#{post_id}"
    end

    context 'with correct response status' do
      before do
        perform
      end

      it { expect(response.status).to eq(204) }
    end

    it { expect { perform }.to change { Post.count }.by (-1) }

    context 'with resource not found' do
      let(:post_id) { '666' }

      before do
        perform
      end

      it { expect(response.status).to eq(404) }
    end
  end
end
