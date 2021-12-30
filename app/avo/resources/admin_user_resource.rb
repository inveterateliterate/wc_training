class AdminUserResource < Avo::BaseResource
  self.title = :full_name
  self.devise_password_optional = true
  # self.search_query = ->(params:) do
  #   scope.ransack(id_eq: params[:q], m: "or").result(distinct: false)
  # end

  field :id, as: :id
  field :first_name, as: :text, sortable: true, required: true, placeholder: ''
  field :last_name, as: :text, sortable: true, required: true, placeholder: ''
  field :email, as: :text, sortable: true, required: true, placeholder: ''
end
