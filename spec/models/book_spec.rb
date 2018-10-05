require 'rails_helper'

RSpec.describe Book, type: :model do
  let(:book) { create(:book) }

  describe '#create' do
    is_expected_to validate
    it { is_expected_to validate_presence_of(:genre) }
    it { is_expected_to validate_presence_of(:author) }
    it { is_expected_to validate_presence_of(:title) }
    it { is_expected_to validate_presence_of(:editor) }
    it { is_expected_to validate_presence_of(:image) }
    it { is_expected_to validate_presence_of(:year) }
  end
end
