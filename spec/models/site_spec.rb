require 'rails_helper'

RSpec.describe Site, type: :model do

  before{@site = Site.new}

  describe 'Testes de preenchimento do model Site' do

    it 'url consegue ser preenchido?' do
      @site.url = 'www.rubygems.org'
      expect(@site.url).to eq('www.rubygems.org')
    end

    it 'description consegue ser preenchido?' do
      @site.description = 'informações sobre gems'
      expect(@site.description).to eq('informações sobre gems')
    end

  end

  describe 'Teste de validação do model Site' do

    it 'Site valido com campos obrigatorios preenchidos?' do
      @site.url = 'www.google.com'
      @site.description = 'site de pesquisas'
      expect(@site).to be_valid
    end

  end

end