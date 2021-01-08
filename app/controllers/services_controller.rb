class ServicesController < ApplicationController
  def index
  end

  def new
  end

  def admin_index
    if user_signed_in?
    else
      redirect_to new_user_registration_path
    end
  end
end
