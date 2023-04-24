require_relative './composite_organization'
require_relative './corporate_sales_department'
require_relative './personal_sales_department'

class FooCompany < CompositeOrganization
  def initialize
    super("Foo Company")
    add_child_organization(CorporateSalesDepartment.new)
    add_child_organization(PesonalSalesDepartment.new)
  end
end
