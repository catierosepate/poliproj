class PagesController < ApplicationController
  def login
  end

  def userlist
  end
  
  def quiz
  end
  
  def create
    name = params["name"]    
    u = User.find_by_name(name)
    if u.present?
      session[:user_id] = u.id
      redirect_to "/users"
    else
        redirect_to "/login"
    end
  end  


  def logout    
    reset_session
    redirect_to "/"
  end

end
