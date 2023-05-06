# Component
class Organization
  attr_accessor :parent
  attr_reader :name

  def initialize(name)
    @name = name
    @parent = nil
  end

  def get_earnings
    0
  end
end

# Composite
class CompositeOrganization < Organization
  attr_accessor :sub_organizations
  def initialize(name)
    super(name)
    @sub_organizations = []
  end

  def add_sub_organization(organization)
    @sub_organizations << organization
    organization.parent = self
  end

  def remove_sub_organization(organization)
    @sub_organizations.delete(organization)
    organization.parent = nil
  end

  def get_earnings
    @sub_organizations.inject(0) do |result, organization|
      result + organization.get_earnings
    end
  end
end

# Leaf
class EasternJapanTeam < Organization
  def initialize
    super("東日本チーム")
  end

  def get_earnings
    300
  end
end

class WesternJapanTeam < Organization
  def initialize
    super("西日本チーム")
  end

  def get_earnings
    200
  end
end

class AsiaTeam < Organization
  def initialize
    super("アジアチーム")
  end

  def get_earnings
    3000
  end
end

class EuropeTeam < Organization
  def initialize
    super("ヨーロッパチーム")
  end

  def get_earnings
    4000
  end
end

# Concreate Composite
class DomesticSalesDepartment < CompositeOrganization
  def initialize
    super("国内営業部")
    add_sub_organization(EasternJapanTeam.new)
    add_sub_organization(WesternJapanTeam.new)
  end
end

class OverseasSalesDepartment < CompositeOrganization
  def initialize
    super("海外営業部")
    add_sub_organization(AsiaTeam.new)
    add_sub_organization(EuropeTeam.new)
  end
end

class FooCompany < CompositeOrganization
  def initialize
    super("Foo株式会社")
    add_sub_organization(DomesticSalesDepartment.new)
    add_sub_organization(OverseasSalesDepartment.new)
  end
end

foo_company = FooCompany.new
puts foo_company.get_earnings

# ツリー構造を下から上へさかのぼることもできる
organization = foo_company.sub_organizations[0].sub_organizations[0]
while organization
  puts "organization: #{organization}"
  organization = organization.parent
end
