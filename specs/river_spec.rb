require("minitest/autorun")
require("minitest/rg")
require_relative("../river")
require_relative("../bears")
require_relative("../fish")

class RiverTest < MiniTest::Test

  def setup
    
    @fish1 = Fish.new("Nemo")
    @fish2 = Fish.new("Casper")
    @fish3 = Fish.new("Sushi")

    @river = River.new("Amazon", [@fish1, @fish2, @fish3])

  end

  def test_river_has_name
    assert_equal("Amazon", @river.name)
  end

  def test_river_has_fishes
    assert_equal(3, @river.fishes.count)
  end

  def test_river_lose_fish
    assert_equal(2, @river.lose_fish(@fish1))
  end
end
