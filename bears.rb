class Bear

  attr_reader :name, :type

  def initialize(name, type)
    @name = name
    @type = type
    @stomac = []
  end

  def empty_stomac()
    @fishes = []
  end

  def take_fish(fish)
    @stomac << @fish1
    return @stomac.length
  end
end
