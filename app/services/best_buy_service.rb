class BestBuyService

  def self.filter_by_zip(zip)
    @conn = Faraday.get("https://api.bestbuy.com/v1/stores(area(#{zip},25))?format=json&show=storeId,storeType,name&pageSize=2&apiKey=#{API_KEY}")
  end
end
