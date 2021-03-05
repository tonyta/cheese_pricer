class CheesePricer
  TAX = 0.1
  DEFAULT_PRICE = 100
  PRICES = {
    cheddar:  120,
    swiss:    150,
    american:  80,
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
