module SessionsHelper
  def auth
    if session[:user_id]
      @auth ||= User.find_by(id: session[:user_id])
    end
  end
end