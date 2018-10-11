require 'rails_helper'

describe User do
  let(:user) { create(:user) }

  describe 'create' do
    it { should validate_presence_of(:first_name) }
    it { should validate_presence_of(:last_name) }
    it { should validate_presence_of(:password) }
    it { should validate_presence_of(:email) }
  end
end
