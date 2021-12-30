class WeekdayFilter < Avo::Filters::SelectFilter
  self.name = 'Weekday'

  def apply(_request, query, value)
    query.for_day(value)
  end

  def options
    Workout.enums_for_admin_filter_dropdowns(:day_nums)
  end
end
