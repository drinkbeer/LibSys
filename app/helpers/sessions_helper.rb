module SessionsHelper


  def admin?
    current_user.permission < 2
  end

end
