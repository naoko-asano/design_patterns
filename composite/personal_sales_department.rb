require_relative './composite_organization'
require_relative './c_team'
require_relative './d_team'

class PesonalSalesDepartment < CompositeOrganization
  def initialize
    super("Personal Sales Department")
    add_child_organization(CTeam.new)
    add_child_organization(DTeam.new)
  end
end
