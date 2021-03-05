class CheesePricer
  attr_reader :cheese

  def initialize(cheese)
    @cheese = cheese
  end

  def price(ounces)
    subtotal =
      case cheese
      when :cheddar
        ounces * 120
      when :swiss
        ounces * 150
      when :american
        ounces * 80
      else
        ounces * 100
      end

    tax = Integer(subtotal * 0.1)
    subtotal + tax
  end
end
