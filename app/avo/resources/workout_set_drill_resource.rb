class WorkoutSetDrillResource < Avo::BaseResource
  self.title = :id
  self.includes = [:drill, :workout]
  # self.search_query = ->(params:) do
  #   scope.ransack(id_eq: params[:q], m: "or").result(distinct: false)
  # end

  # maybe don't actually need a form for this and / or the index - maybe just list on another page and the show page
  field :workout, as: :belongs_to, sortable: true # make select show the user and workout day
  field :drill, as: :belongs_to, sortable: true
  field :set_number, as: :number

  filter DrillTypeFilter
  filter WeekNumberFilter
  filter WeekdayFilter
end
