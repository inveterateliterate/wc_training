class DrillResource < Avo::BaseResource
  self.title = :name
  # self.search_query = ->(params:) do
  #   scope.ransack(id_eq: params[:q], m: "or").result(distinct: false)
  # end

  # field :id, as: :id
  field :name, as: :text
  field :drill_type, as: :text, format_using: -> (value) { value&.titleize }, sortable: true, required: true, placeholder: ''
  field :num_reps, as: :text
  field :run_type, as: :text, format_using: -> (value) { value&.titleize }, sortable: true, placeholder: ''
  field :lift_type, as: :text, format_using: -> (value) { value&.titleize }, sortable: true, placeholder: ''
  field :distance, as: :text
  field :distance_unit, as: :text
  field :rep_rest_time, as: :text
  field :rep_rest_time_unit, as: :text
  field :time_goal, as: :number
  field :description, as: :textarea, rows: 3
end
