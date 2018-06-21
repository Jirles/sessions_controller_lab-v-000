module SessionsHelper

  def valid_submission?
    !!params[:name]
  end
  
end
