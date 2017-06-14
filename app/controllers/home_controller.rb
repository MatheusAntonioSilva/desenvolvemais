class HomeController < ApplicationController
   before_filter :authorize_user, only: [:index]
  def index
  end
   def authorize_user
      unless current_user
        redirect_to root_path, alert:"You need to login to continue."
      end
    end
end
