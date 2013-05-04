class MypageController < ApplicationController
  skip_before_filter :authenticate_user!
  before_filter :redirect_unsigned_user_to_services

  def index
  end

private
  def redirect_unsigned_user_to_services
    redirect_to services_path unless user_signed_in?
  end
end
