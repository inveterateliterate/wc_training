class DrillTypeFilter < Avo::Filters::SelectFilter
  self.name = 'Drill Type'

  def apply(_request, query, value)
    query.send(value)
    # case value
    # when 'conditioning'
    #   query.conditioning
    # when 'lifting'
    #   query.lifting
    # else
    #   query
    # end
  end

  def options
    Drill.enums_for_admin_filter_dropdowns(:drill_types)
  end
end

