require 'rails_helper'

describe User do
  let(:user) { create(:user) }

  describe 'create' do
    it { should validate_presence_of(:first_name) }

    it { should validate_presence_of(:last_name) }
  end
end
