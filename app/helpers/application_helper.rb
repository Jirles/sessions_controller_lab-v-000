module ApplicationHelper

  def set_user 
    @user = session[:name]
  end 
end
