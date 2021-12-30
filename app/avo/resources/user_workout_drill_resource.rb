class UserWorkoutDrillResource < Avo::BaseResource
  self.title = :id
  self.includes = [:drill, user_workout: [:user, :workout]]

  # maybe don't actually need a form for this and / or the index - maybe just list on another page and the show page
  field :user_workout, as: :belongs_to, sortable: true
  field :drill, as: :belongs_to, sortable: true
  field :note, as: :text, show_on: [:show]
end
