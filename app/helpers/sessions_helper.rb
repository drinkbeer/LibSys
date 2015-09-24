module SessionsHelper


  def admin?
    current_user.permission < 2
  end

  # def log_out
  #   session.delete(:user_id)
  #   @current_user = nil
  # end
end
