module ApplicationHelper

  def logged_in?
    !!session[:name]
  end
  
  def set_user
    @user = session[:name]
  end
end
