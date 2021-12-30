class UserWorkoutResource < Avo::BaseResource
  self.title = :id
  self.includes = [:user, :workout]
  # self.search_query = ->(params:) do
  #   scope.ransack(id_eq: params[:q], m: "or").result(distinct: false)
  # end

  # will ultimately want to list here all the user drills for the workout as well
  field :workout, as: :belongs_to, sortable: true
  field :user, as: :belongs_to, sortable: true

  filter UserFilter
  filter WeekNumberFilter
  filter WeekdayFilter
end


