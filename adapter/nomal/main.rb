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

class AmericanTowerAdapter < Tower
  def initialize(american_tower)
    @american_tower = american_tower
    @name = @american_tower.name
  end

  def height_m
    (@american_tower.height_ft / 3.2808).floor
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

trump_tower = AmericanTowerAdapter.new(AmericanTower.new("トランプタワー", 861))
tower_measurement.measure(trump_tower)
