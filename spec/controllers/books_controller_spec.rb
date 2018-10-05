require 'rails_helper'
require 'support/shared_context'

RSpec.describe BooksController, type: :controller do
  include_context 'Authenticated User'

  describe 'GET #index' do
    context 'When fetching all the books' do
      let!(:books) { FactoryBot.create_list(:book, 3) }

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

  describe 'GET #shows' do
    context 'When fetching a book id' do
      let!(:book) { FactoryBot.create(:book) }

      before do
        get :shows, params: { id: book.id }
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
end
