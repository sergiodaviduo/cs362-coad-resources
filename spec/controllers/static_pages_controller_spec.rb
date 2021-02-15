require 'rails_helper'

RSpec.describe StaticPagesController, type: :controller do

  # basic first homepage test
  describe 'get index' do
    it 'return http success' do
      get :index
      # or get '/' or get root_url
      expect(response).to have_http_status(:success)
    end
  end
end
