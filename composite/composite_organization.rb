require_relative './organization'

class CompositeOrganization < Organization
  attr_accessor :child_organizations

  def initialize(name)
    super(name)
    @child_organizations = []
  end

  def add_child_organization(organization)
    @child_organizations << organization
    organization.parent = self
  end

  def remove_child_organization(organization)
    @child_organizations.delete(organization)
    organization.parent = nil
  end

  def get_profit
    profit = 0
    @child_organizations.each { |organization| profit += organization.get_profit }
    profit
  end

  def total_teams
    total = 0
    @child_organizations.each do |organization|
      total += organization.total_teams
    end
    total
  end
end
