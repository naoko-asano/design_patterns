require_relative './composite_organization'
require_relative './a_team'
require_relative './b_team'

class CorporateSalesDepartment < CompositeOrganization
  def initialize
    super("Corporate Sales Department")
    add_child_organization(ATeam.new)
    add_child_organization(BTeam.new)
  end
end
