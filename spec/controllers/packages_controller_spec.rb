require 'rails_helper'

describe PackagesController do
  describe 'GET #index' do
    it 'assigns all packages as @packages' do
      get :index
      expect(response).to be_successful
    end
  end
  describe 'GET #new' do
    it 'assigns a new package as @package' do
      @package = FactoryGirl.create(:package)
      get :new
      expect(response).to render_template('new')
      expect(@package).to be_a(Package)
    end
  end
  describe 'POST #create' do
    context 'with valid params' do
      it 'creates a new Package' do
        expect do
          post :create, package: { package_name: 'name', vendor_name: 'vend', data_pickup_type: 'some' }
        end.to change(Package, :count).by(1)
      end

      it 'assigns a newly created package as @package' do
        post :create, package: { package_name: 'name', vendor_name: 'vend', data_pickup_type: 'some' }
        expect(assigns(:package)).to be_a(Package)
        expect(assigns(:package)).to be_persisted
      end

      it 'redirects to the created package' do
        post :create, package: { package_name: 'name', vendor_name: 'vend', data_pickup_type: 'some' }
        expect(response).to redirect_to(Package.last)
      end
    end
    context 'with invalid params' do
      it 'assigns a newly created but unsaved package as @package' do
        post :create, package: { package_name: '', vendor_name: '', data_pickup_type: '' }
        expect(assigns(:package)).to be_a(Package)
      end

      it "re-renders the 'new' template" do
        post :create, package: { package_name: '', vendor_name: '', data_pickup_type: '' }
        expect(response).to render_template('new')
      end
    end
  end
  describe 'set_package' do
    it 'finds the package by id' do
    end
  end
end
