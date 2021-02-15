require 'rails_helper'

RSpec.describe RegionsController, type: :controller do

  context 'unauthenticated users' do

    describe 'index' do
      it 'redirs to sign-in' do
        get :index
        expect(response).to redirect_to(new_user_session_url)
      end
    end

    describe 'show' do
      it 'redirs to sign-in' do
        get :show, params: {id: "fake_id"}
        expect(response).to redirect_to(new_user_session_url)
      end
    end

    describe 'new' do
      it 'redirs to sign-in' do
        get :new
        expect(response).to redirect_to(new_user_session_url)
      end
    end

    describe 'edit' do
      it 'redirs to sign-in after edit' do
        get :edit, params: {id: "fake_id"}
        expect(response).to redirect_to(new_user_session_url)
      end
    end

    describe 'update' do
      it 'redirs to sign-in after update patch' do
        patch :update, params: {id: "fake_id"}
        expect(response).to redirect_to(new_user_session_url)
      end
      it 'redirs to sign-in after update put' do
        put :update, params: {id: "fake_id"}
        expect(response).to redirect_to(new_user_session_url)
      end
    end

    describe 'destroy' do
      it 'redirs to sign-in after delete' do
        delete :destroy, params: {id: "fake_id"}

        expect(response).to redirect_to(new_user_session_url)
      end
      it 'redirs to regions after delete' do
        @request.env['devise.mapping'] = Devise.mappings[:user]
        user = FactoryBot.create(:user)

        sign_in :user, user

        delete :destroy, params: {id: "fake_id"}

        expect(response).to redirect_to(regions_path)
      end
    end

  end

end
