class UserWorkoutDrillResource < Avo::BaseResource
  self.title = :id
  self.includes = [:drill, user_workout: :workout]
  # self.search_query = ->(params:) do
  #   scope.ransack(id_eq: params[:q], m: "or").result(distinct: false)
  # end

  # maybe don't actually need a form for this and / or the index - maybe just list on another page and the show page
  field :user_workout, as: :belongs_to, sortable: true # make select show the user and workout day
  field :drill, as: :belongs_to, sortable: true
  field :note, as: :text, show_on: [:show]
end
