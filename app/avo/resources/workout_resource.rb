class WorkoutResource < Avo::BaseResource
  self.title = :title
  # self.search_query = ->(params:) do
  #   scope.ransack(id_eq: params[:q], m: "or").result(distinct: false)
  # end

  # field :id, as: :id
  field :week_num, as: :number, name: 'Week', sortable: true, required: true, placeholder: ''
  field :day_num, as: :text, format_using: -> (value) { value&.titleize }, name: 'Day', sortable: true, required: true, placeholder: ''

  filter WeekNumberFilter
  filter WeekdayFilter
end
