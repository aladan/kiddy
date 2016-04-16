module ApplicationHelper
  def user_full_name user
    [user.name, user.surname].join(" ") if user
  end
end
