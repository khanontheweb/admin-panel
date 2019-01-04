module ApplicationHelper
  def current_user
    if session[:user_id]
      @current_user ||= User.find(session[:user_id])
    else
      @current_user = nil
    end
  end
end

def instructors
  return User.where("permission_id = '2'");
end

def students
  return User.where("permission_id = '3'");
end
