class LiftTypeFilter < Avo::Filters::SelectFilter
  self.name = 'Lift Type'

  def apply(_request, query, value)
    query.send(value)
  end

  def options
    Drill.enums_for_admin_filter_dropdowns(:lift_types)
  end
end
