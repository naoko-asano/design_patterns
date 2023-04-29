class AmericanTowerAdapter
  attr_reader :name, :height_m

  def initialize(american_tower)
    @name = american_tower.name
    @height_m = (american_tower.height_ft / 3.2808).floor
  end
end
