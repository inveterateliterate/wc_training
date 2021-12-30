class RunTypeFilter < Avo::Filters::SelectFilter
  self.name = 'Run Type'

  def apply(_request, query, value)
    query.send(value)
  end

  def options
    Drill.enums_for_admin_filter_dropdowns(:run_types)
  end
end
