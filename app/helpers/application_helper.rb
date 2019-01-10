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
  return User.where("permission_id = '2'")
end

def students
  return User.where("permission_id = '3'")
end

def course_of_cohort(cohort)
  return Course.find(cohort.course_i)
end

def student_by_id(student)
  return User.find(student.student_id)
end

def instructor_by_id(instructor)
  return User.find(instructor.instructor_id)
end

def image_type(propic)
  width = propic.metadata[:width]
  height = propic.metadata[:height]
  if width == height
    return "square"
  elsif width < height
    return "portrait"
  else
    return "landscape"
  end
end

def education_level(user) 
  if user.education_id == 1
    @education = "High School"
  elsif user.education_id == 2
    @education = "Bachelor's"
  elsif user.education_id == 3
    @education = "Master's"
  elsif user.education_id == 4
    @education = "PhD"
  end
end

def user_type(user)
  if user.permission_id == 1
    @type = "Administrator"
  elsif user.permission_id == 2
    @type = "Instructor"
  elsif user.permission_id == 3
    @type = "Student"
  end
end
