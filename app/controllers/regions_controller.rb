class RegionsController < ApplicationController

  before_action :regions_filters, only: [:index]

  # GET /regions
  def index
    @regions = RegionSearchService.search(@filters)

    render json: @regions, status: :ok
  end

  private
  def regions_filters
    @filters = params.permit(Constants::REGIONS_FILTERS.keys)
  end
end
