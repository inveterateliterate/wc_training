class WeekNumberFilter < Avo::Filters::SelectFilter
  self.name = 'Week Number'

  def apply(_request, query, value)
    query.for_week(value)
  end

  def options
    opts = {}
    Workout.pluck(:week_num).uniq.each do |week_num|
      opts[week_num] = week_num
    end
    opts
  end
end
