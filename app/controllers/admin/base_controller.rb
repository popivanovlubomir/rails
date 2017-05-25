class Admin::BaseController < ApplicationController
  before_action :require_admin

  private

  def require_admin
    # check if the user is logged in
    # sign out the user and redirect
    unless current_user.admin?
      sign_out
      redirect_to root_path
    end
  end
end
