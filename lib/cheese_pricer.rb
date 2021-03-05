class CheesePricer
  TAX = 0.1
  DEFAULT_PRICE = 100
  PRICES = {
    cheddar:   90,
    swiss:    130,
    american:  90,
    gouda:    110,
  }

  attr_reader :cheese

  def initialize(cheese)
    @cheese = cheese
  end

  def price(ounces)
    per_oz = PRICES[cheese] || DEFAULT_PRICE
    subtotal = ounces * per_oz
    tax = Integer(subtotal * TAX)

    subtotal + tax
  end
end
