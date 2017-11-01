class SearchController < ApplicationController

  def index
    @stores = Store.filter_by_zip(params[:zip])
  end
end
