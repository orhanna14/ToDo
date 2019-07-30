class ApplicationController < ActionController::Base

  def authenticate
    if !signed_in?
      redirect_to new_session_path
    end
  end

  def current_session
    session[:current_email]
  end

  def signed_in?
   current_session.present?
  end

  def sign_in_as(email)
    session[:current_email] = email
  end

end
