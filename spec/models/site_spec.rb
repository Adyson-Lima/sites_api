require 'rails_helper'

RSpec.describe Site, type: :model do

  before{@site = Site.new}

  describe 'Testes de preenchimento do model Site' do

    it 'url consegue ser preenchido?' do
      @site.url = ''
      expect(@site.url).to eq('www.rubygems.org')
    end

  end

end