require 'rails_helper'

RSpec.describe Book, type: :model do
  subject(:book) do
    Book.new(
      genre: genre, author: author, image: image, title: title,
      editor: editor, year: year
    )
  end

  let(:genre)            { Faker::Book.genre }
  let(:author)           { Faker::Book.author }
  let(:title)            { Faker::Book.title }
  let(:editor)           { Faker::Book.publisher }
  let(:image)            { Faker::Name.last_name }
  let(:year)             { Faker::Number.number(4) }

  describe '#create' do
    context 'When the genre is nil' do
      let(:genre) { nil }

      it do
        is_expected.to be_invalid
      end
    end

    context 'When the author is nil' do
      let(:author) { nil }

      it do
        is_expected.to be_invalid
      end
    end
    context 'When the image is nil' do
      let(:image) { nil }

      it do
        is_expected.to be_invalid
      end
    end

    context 'When the title is nil' do
      let(:title) { nil }

      it do
        is_expected.to be_invalid
      end
    end

    context 'When the editor is nil' do
      let(:editor) { nil }

      it do
        is_expected.to be_invalid
      end
    end
    context 'When the year is nil' do
      let(:year) { nil }

      it do
        is_expected.to be_invalid
      end
    end
  end
end
