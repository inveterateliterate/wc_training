class DrillResource < Avo::BaseResource
  self.title = :name
  # self.search_query = ->(params:) do
  #   scope.ransack(id_eq: params[:q], m: "or").result(distinct: false)
  # end

  # field :id, as: :id
  field :name, as: :text
  field :drill_type, as: :select, options: Drill.enums_for_admin_select_dropdowns(:drill_types), sortable: true, required: true, placeholder: '', display_with_value: true
  field :num_reps, as: :text, placeholder: ''
  field :run_type, as: :select, options: Drill.enums_for_admin_select_dropdowns(:run_types), sortable: true, placeholder: '', display_with_value: true
  field :lift_type, as: :select, options: Drill.enums_for_admin_select_dropdowns(:lift_types), sortable: true, placeholder: '', display_with_value: true
  field :distance, as: :text, placeholder: ''
  field :distance_unit, as: :select, placeholder: '', options: Drill.enums_for_admin_select_dropdowns(:distance_units), display_with_value: true
  field :rep_rest_time, as: :text, placeholder: '' # would be nice to make this one column combined with unit
  field :rep_rest_time_unit, as: :select, placeholder: '', options: Drill.enums_for_admin_select_dropdowns(:rep_rest_time_units), display_with_value: true
  field :time_goal, as: :number, format_using: -> (value) { "#{value} min" if value }, placeholder: ''
  field :description, as: :textarea, rows: 3, placeholder: ''

  filter DrillTypeFilter
  filter RunTypeFilter
  filter LiftTypeFilter
end
