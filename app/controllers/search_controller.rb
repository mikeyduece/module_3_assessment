class SearchController < ApplicationController

  def index
    require 'pry'; binding.pry
    @stores = Store.filter_by_zip(params[:zip])
  end
end
