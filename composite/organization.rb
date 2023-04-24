class Organization
  attr_accessor :name, :parent

  def initialize(name)
    @name = name
    @parent = nil
  end

  # 利益を取得
  def get_profit
    0
  end

  def total_teams
    1
  end
end
