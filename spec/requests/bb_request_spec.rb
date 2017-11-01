require 'rails_helper'

describe 'BestBuy' do
  it 'gets the stuff I need to pass' do
    VCR.use_cassette('best_buy') do
      zip = '80202'
      get "https://api.bestbuy.com/v1/stores(area(#{zip},25))?format=json&show=longName,storeType,phone,distance,city&apiKey=#{ENV['API_KEY']}"

      expect(response).to be_success

      things = JSON.parse(response.body)

      expect(things['stores'].count).to eq(17)
    end
  end
end
