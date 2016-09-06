require 'rails_helper'

describe ApplicationController do
  before do
    request.env['REMOTE_USER'] = 'testuser'
    allow(controller.request).to receive(:env).and_return('REMOTE_USER' => 'testuser')
  end
  describe '#sunet_id' do
    it 'should return a sunet_id when there is a user in the environment' do
      user = controller.send(:sunet_id)
      expect(user).to eq('testuser')
    end
  end
  describe '#sunet_id' do
    it 'should return a user_id when there is a user in the environment' do
      user = controller.send(:sunet_id)
      expect(user).to eq('testuser')
    end
  end
  describe '#current_user' do
    it 'should set the current_user as a webauth_user' do
      user = FactoryGirl.create(:authorized_user)
      expect(user.sunet_id).to eq('testuser')
      expect(user.name).to eq('Test User')
      expect(controller.send(:current_user)).to be_a AuthorizedUser
    end
  end
  describe 'page title' do
    it 'Should display the default page title for the app' do
      expect(controller.send(:page_title)).to eq('E-Loader Package Admin')
    end
  end
end
