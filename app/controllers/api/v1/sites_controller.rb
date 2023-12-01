class Api::V1::SitesController < ApplicationController

  before_action :set_site, only: %i[show] # show update destroy

  def index
    @sites = Site.all 
    render json: @sites
  end

  def show
    render json: @site
  end

  def create
    @site = Site.new(site_params)
    if @site.save
      render json: @site, status: :created, location: api_v1_site_url(@site)
    else
      render json: @site.errors, status: :unprocessable_entity
    end
  end

private

def set_site
  @site = Site.find(params[:id])
end

def site_params
  params.require(:site).permit(:url, :description)
end

end