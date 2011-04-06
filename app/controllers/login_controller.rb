class LoginController < ApplicationController
  before_filter :require_no_user, :only => [:new, :create]
  before_filter :require_user, :only => :destroy
  skip_before_filter :authorize, :only => [:new, :create, :destroy]

  def section_id
    "loginpage"
  end

  def index
    redirect_to new_login_url
  end

  def create
    authenticate!

    if logged_in?
      flash[:notice] = _("Login Successful")

      # TODO:  Come up with a better default redirect!
      redirect_to(session.delete(:original_uri) || systems_url)
    end
  end

  def destroy
    logout
    flash[:notice] = _("Logout Successful")
    redirect_to root_url
  end

  def unauthenticated
    flash[:error] = _("You've entered an incorrect username or password combination, please try again.")
    redirect_to new_login_url
    false
  end
end
