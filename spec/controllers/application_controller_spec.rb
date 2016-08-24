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
end
