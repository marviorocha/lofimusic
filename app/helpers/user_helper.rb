module UserHelper
  def is_user_logged(user)
    if user.role === 'user'
      "Welcome <b>#{user.full_name}</b>, you are logged as an user".html_safe
    else
      "Welcome <b>#{user.full_name}</b>, you are logged as an administrator".html_safe
    end
  end
end
