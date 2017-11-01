class Store

  def initialize(attr)
    @name = attr[:name]
    @distance = attr[:distance]
    @city = attr[:city]
    @phone = attr[:phone]
    @type = attr[:type]
  end

  def self.filter_by_zip(zip)
    BestBuyService.filter_by_zip(zip)
  end
end
