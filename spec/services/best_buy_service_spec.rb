require 'rails_helper'

describe 'Best Buy Service' do
  context 'Class Methods' do
    context '.filter_by_zip' do
      it 'returns a valid object' do
        VCR.use_cassette('service_test') do
          zip = '80202'
          service = BestBuyService.new

          expect(service). to be_a BestBuyService
        end
      end
    end
  end
end
