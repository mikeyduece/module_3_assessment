class Store

  attr_reader :name, :distance, :city, :phone, :type

  def initialize(attr)
    @name = attr[:longName]
    @distance = attr[:distance]
    @city = attr[:city]
    @phone = attr[:phone]
    @type = attr[:storeType]
  end

  def self.filter_by_zip(zip)
    stores = BestBuyService.filter_by_zip(zip)
    stores.map do |store|
      Store.new(store)
    end
  end
end
