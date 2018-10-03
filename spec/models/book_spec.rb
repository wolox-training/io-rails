require 'rails_helper'

RSpec.describe Book, type: :model do
  let(:book) { create(:book) }

  describe '#create' do
    it { should validate_presence_of(:genre) }

    it { should validate_presence_of(:author) }

    it { should validate_presence_of(:title) }

    it { should validate_presence_of(:editor) }

    it { should validate_presence_of(:image) }

    it { should validate_presence_of(:year) }
  end
end
