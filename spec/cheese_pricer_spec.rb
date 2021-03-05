RSpec.describe CheesePricer, "#pricer" do
  let(:prices) do
    {
      cheddar:  120,
      swiss:    150,
      american:  80,
    }
  end

  before { stub_const("#{described_class}::PRICES", prices) }

  specify "10 oz of cheddar should cost $13.20" do
    cheese = described_class.new(:cheddar)
    expect(cheese.price(10)).to eq 1320
  end

  specify "10 oz of swiss should cost $16.50" do
    cheese = described_class.new(:swiss)
    expect(cheese.price(10)).to eq 1650
  end

  specify "10 oz of american should cost $8.80" do
    cheese = described_class.new(:american)
    expect(cheese.price(10)).to eq 880
  end

  specify "10 oz of other cheeses should cost $11.00" do
    cheese = described_class.new(:gouda)
    expect(cheese.price(10)).to eq 1100
  end
end
