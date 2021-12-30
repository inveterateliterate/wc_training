class DrillTypeFilter < Avo::Filters::SelectFilter
  self.name = 'Drill Type'

  def apply(_request, query, value)
    query.send(value)
  end

  def options
    Drill.enums_for_admin_filter_dropdowns(:drill_types)
  end
end

