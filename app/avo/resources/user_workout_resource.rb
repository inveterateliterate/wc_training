class UserWorkoutResource < Avo::BaseResource
  self.title = :id
  self.includes = [:user, :workout]
  self.search_query = -> (params:) do
    scope.ransack(id_eq: params[:q], user_first_name_cont: params[:q], user_last_name_cont: params[:q], m: "or").result(distinct: false)
  end

  # will ultimately want to list here all the user drills for the workout as well
  field :workout, as: :belongs_to, sortable: true
  field :user, as: :belongs_to, sortable: true

  filter UserFilter
  filter WeekNumberFilter
  filter WeekdayFilter

  field :search_result_name, as: :text, hide_on: :all, as_label: true do |model|
    "#{model.user.full_name} - #{model.workout.title}"
  end
end


