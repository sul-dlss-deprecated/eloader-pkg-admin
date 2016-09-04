require 'rails_helper'

describe UrlExclusionsController, type: :controller do
  let(:valid_attributes) do
    { id: '2', url_substring: 'some.test.url/exclusion' }
  end
  let(:invalid_attributes) do
    { id: '2', url_substring: '' }
  end
  describe 'GET #new' do
    it 'assigns a new url_exclusion as @url_exclusion' do
      @url_exclusion = FactoryGirl.create(:url_exclusion)
      get :new
      expect(response).to render_template('new')
      expect(@url_exclusion).to be_a(UrlExclusion)
    end
  end
  describe 'POST #create' do
    context 'with valid params' do
      it 'creates a new UrlExclusion' do
        expect do
          post :create, url_exclusion: { url_substring: 'some.url.sub/string' }
        end.to change(UrlExclusion, :count).by(1)
      end

      it 'assigns a newly created url_exclusion as @url_exclusion' do
        post :create, url_exclusion: { url_substring: 'some.url.sub/string' }
        expect(assigns(:url_exclusion)).to be_a(UrlExclusion)
        expect(assigns(:url_exclusion)).to be_persisted
      end

      it 'redirects to the created url_exclusion' do
        post :create, url_exclusion: { url_substring: 'some.url.sub/string' }
        expect(response).to redirect_to(UrlExclusion)
      end
    end

    context 'with invalid params' do
      it 'assigns a newly created but unsaved url_exclusion as @url_exclusion' do
        post :create, url_exclusion: { url_substring: '' }
        expect(assigns(:url_exclusion)).to be_a_new(UrlExclusion)
      end

      it "re-renders the 'new' template" do
        post :create, url_exclusion: { url_substring: '' }
        expect(response).to render_template('new')
      end
    end
  end
end
