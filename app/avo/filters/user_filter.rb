class UserFilter < Avo::Filters::SelectFilter
  self.name = 'User filter'

  def apply(_request, query, value)
    names = value.split(' ')
    user_ids = User.where(first_name: names[0], last_name: names[1]).pluck(:id)
    query.where(user_id: user_ids)
  end

  def options
    opts = {}
    User.all.each do |user|
      opts[user.full_name] = user.full_name
    end
    opts
  end
end
