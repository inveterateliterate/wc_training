class WorkoutResource < Avo::BaseResource
  self.title = :title

  field :week_num, as: :number, name: 'Week', sortable: true, required: true, placeholder: ''
  field :day_num, as: :text, format_using: -> (value) { value&.titleize }, name: 'Day', sortable: true, required: true, placeholder: ''

  filter WeekNumberFilter
  filter WeekdayFilter
end
