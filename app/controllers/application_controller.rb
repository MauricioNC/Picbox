class ApplicationController < ActionController::Base
  def set_user
    @current_user = User.first
  end
end
