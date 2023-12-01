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

  describe 'GET /api/v1/sites/id' do
    it 'Consegue listar um site especifico e retornar status 200?' do
      get :show, params: {id: @site.id}
      expect(response.body).to include_json(id: @site.id)
      expect(response).to have_http_status(200)
    end
  end

  describe 'POST /api/v1/sites' do
    it 'Consegue criar um site e retornar status 201?' do
      post :create, params: {site: {url: 'www.debian.org', description: 'site da distro Debian'},format: :json}
      expect(response.body).to include_json(url: 'www.debian.org')
      expect(response).to have_http_status(201)
    end
  end

  describe 'PATCH /api/v1/sites/id' do
    it 'Consegue atualizar um site e retornar status 200?' do
      site = Site.last
      patch :update, params: {site: {url: 'www.amazon.com', description: 'site de vendas'}, id: site.id}
      expect(response.body).to include_json(url: 'www.amazon.com')
      expect(response).to have_http_status(200)
    end
  end

end