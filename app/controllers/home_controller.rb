class HomeController < ApplicationController

  def index
    if user_signed_in?
      if current_user.admin?
        @users = User.all.order(role: :desc)
      elsif current_user.student?
        @students = current_user.email
      end
    end
  end

end
