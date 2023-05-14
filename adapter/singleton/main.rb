class Tower
  attr_reader :name, :height_m

  def initialize(name, height_m)
    @name = name
    @height_m = height_m
  end
end

class AmericanTower
  attr_reader :name, :height_ft

  def initialize(name, height_ft)
    @name = name
    @height_ft = height_ft
  end
end

trump_tower = AmericanTower.new("トランプタワー", 861)

class << trump_tower
  def height_m
    (@height_ft / 3.2808).floor
  end
end

class TowerMeasurement
  def measure(tower)
    puts "#{tower.name}の高さは、約#{tower.height_m}mだよー"
  end
end

tower_measurement = TowerMeasurement.new
tokyo_tower = Tower.new("東京タワー", 333)
tower_measurement.measure(tokyo_tower)

tower_measurement.measure(trump_tower)
