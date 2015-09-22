module SessionsHelper

  def admin?
    current_user.role.downcase == 'admin'
  end

  # def log_out
  #   session.delete(:user_id)
  #   @current_user = nil
  # end
end
