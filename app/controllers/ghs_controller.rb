class GhsController < ApplicationController
  before_action :search_gh, only: [:index, :search]

  def index
  end

  def search
    @results = @p.result
  end

  private
  def search_gh
    @p = Gh.ransack(params[:q])
  end

end
