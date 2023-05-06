require_relative "main"

# よくある間違い
class CompositeOrganization
  def total_team_count
    @sub_organizations.length
  end
end

foo_company = FooCompany.new
puts foo_company.total_team_count # 部署の数だけしか数えられていない(チームの数が無視されている)

# 修正ver.
class Organization
  def total_team_count
    1
  end
end

class CompositeOrganization
  def total_team_count
    @sub_organizations.inject(0) do |result, organization|
      result + organization.total_team_count
    end
  end
end

puts foo_company.total_team_count
