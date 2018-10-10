require 'rails_helper'

describe Rent do
  subject (:rent) {FactoryBot.create(:rent)}
  it { is_expected.to be_valid }

  it { is_expected.to validate_presence_of(:user) }
  it { is_expected.to validate_presence_of(:book) }
  it { is_expected.to validate_presence_of(:rent_date) }
  it { is_expected.to validate_presence_of(:rent_end) }

end
