require 'rails_helper'

RSpec.describe Api::V1::SitesController, type: :controller do

  before{@site = Site.create(url: 'br.yahoo.com', description: 'site de pesquisas')}

  describe 'GET /api/v1/sites' do
    it 'Consegue listar todos os sites e retornar status 200?' do
      get :index
      expect(JSON.parse(response.body).size).to eq(1)
      expect(response).to have_http_status(200)
    end
  end

end