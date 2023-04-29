require_relative "./measurement"
require_relative "./japanese_tower"
require_relative "./american_tower"
require_relative "./american_tower_adapter"

measurement = Measurement.new
tokyo_tower = JapaneseTower.new("東京タワー", 333)

measurement.measure(tokyo_tower)

trump_tower = AmericanTower.new("トランプ・タワー", 861)
converted_trump_tower = AmericanTowerAdapter.new(trump_tower)

measurement.measure(converted_trump_tower)
