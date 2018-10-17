require 'rails_helper'
require 'support/shared_context'

describe BooksController do
  describe 'GET #index' do
    context 'with an authenticated user' do
      include_context 'Authenticated User'
      context 'When fetching all the books' do
        let!(:books) { FactoryBot.create_list(:book, 3) }
        before do
          get :index
        end

        it 'responses with the books json' do
          expected = ActiveModel::Serializer::CollectionSerializer.new(
            books, each_serializer: BookSerializer
          ).to_json
          expect(response.body.to_json) =~ JSON.parse(expected)
        end
        it 'responds with 200 status' do
          expect(response).to have_http_status(:ok)
        end
      end
    end

    context 'without an authenticated user' do
      before do
        get :index
      end
      it 'responds with 401 status' do
        expect(response).to have_http_status(401)
      end
    end
  end

  describe 'GET #show' do
    context 'with an authenticated user' do
      include_context 'Authenticated User'

      context 'When fetching a book id' do
        let!(:book) { FactoryBot.create(:book) }

        before do
          get :show, params: { id: book.id }
        end

        it 'responses with the book id json' do
          expect(response.body.to_json) =~ BookSerializer.new(
            book, root: false
          ).to_json
        end

        it 'responds with 200 status' do
          expect(response).to have_http_status(:ok)
        end
      end
    end

    context 'without an authenticated user' do
      let!(:id) { 1 }

      before do
        get :show, params: { id: id }
      end

      it 'responds with 401 status' do
        expect(response).to have_http_status(401)
      end
    end
  end
end
