class UserWorkoutDrillResource < Avo::BaseResource
  self.title = :id
  self.includes = [:drill, user_workout: [:user, :workout]]

  # maybe don't actually need a form for this and / or the index - maybe just list on another page and the show page
  field :user_workout, as: :belongs_to, sortable: true
  field :drill, as: :belongs_to, sortable: true
  field :note, as: :text, show_on: [:show]

  field :user_name, as: :text, hide_on: :all, as_label: true do |model|
    "#{model.user.full_name} - #{model.workout.title}"
  end

  field :search_result_name, as: :text, hide_on: :all, as_label: true do |model|
    # also workout title?
    "#{model.user_workout.user.full_name} - #{model.drill.name}"
  end
end
