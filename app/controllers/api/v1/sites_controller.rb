class Api::V1::SitesController < ApplicationController

  before_action :set_site, only: %i[show] # show update destroy

  def index
    @sites = Site.all 
    render json: @sites
  end

  def show
    render json: @site
  end

private

def set_site
  @site = Site.find(params[:id])
end

def site_params
  params.require(:site).permit(:url, :description)
end

end