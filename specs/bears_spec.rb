require("minitest/autorun")
require("minitest/rg")
require_relative("../bears")
require_relative("../fish")
require_relative("../river")

class BearsTest < MiniTest::Test

  def setup

    @fish1 = Fish.new("Nemo")
    @fish2 = Fish.new("Casper")
    @fish3 = Fish.new("Sushi")

    @bear = Bear.new("Yogi", "Grizzly")
    # @roar = Roar.new("Roar")
  end

  def test_bear_has_name
    assert_equal("Yogi", @bear.name)
  end

  def test_bear_has_type
    assert_equal("Grizzly", @bear.type)
  end

  def test_bear_has_empty_stomac
    assert_equal([], @bear.empty_stomac)
  end

  def test_bear_take_fish
    assert_equal(1, @bear.take_fish(@fish1))
  end

  # def test_bear_can_roar
  #   assert_equal("Roar", )
  # end

end
