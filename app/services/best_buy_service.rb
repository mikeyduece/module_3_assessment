class BestBuyService

  def self.filter_by_zip(zip)
    @conn = Faraday.get("https://api.bestbuy.com/v1/stores(area(#{zip},25))?format=json&show=storeType,longName,city,distance,phone&pageSize=17&apiKey=#{ENV['API_KEY']}")
    response = JSON.parse(@conn.body, symbolize_names: true)
  end
end
