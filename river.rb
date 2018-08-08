class River

  attr_reader :name, :fishes

  def initialize(name, fishes)
    @name = name
    @fishes = fishes
  end

  def lose_fish(fish)
    fishes.delete(fish)
    return fishes.count
  end



end
