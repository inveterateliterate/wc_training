class WorkoutDrillResource < Avo::BaseResource
  self.title = :id
  self.includes = [:drill, :workout]
  self.search_query = -> (params:) do
    scope.ransack(id_eq: params[:q], drill_name_cont: params[:q], m: "or").result(distinct: false)
  end

  # maybe don't actually need a form for this and / or the index - maybe just list on another page and the show page
  field :workout, as: :belongs_to, sortable: true # make select show the user and workout day
  field :drill, as: :belongs_to, sortable: true
  field :circuit_number, as: :number
  field :order_in_circuit, as: :number
  field :between_circuits, as: :boolean

  filter DrillTypeFilter
  filter WeekNumberFilter
  filter WeekdayFilter

  field :search_result_name, as: :text, hide_on: :all, as_label: true do |model|
    "#{model.drill.name} - #{model.workout.title}"
  end
end
