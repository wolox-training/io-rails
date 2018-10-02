RSpec.shared_context 'Authenticated User' do

  let(:user) { FactoryBot.create(:user) }
  before do
    request.headers.merge! user.create_new_auth_token
  end
# let!(:access_data) { AuthenticableEntity.generate_access_token(user) }
#  let!(:access_token) { access_data[:token] }
#  let!(:renew_id) { access_data[:renew_id] }

#  before do
#    request.headers['Authorization'] = access_token
#  end
end
