class ClassGroupsController < ApplicationController

  def index
    if user_signed_in?
      if current_user.admin?
        @class_groups = ClassGroup.all
      elsif current_user.student?
        @students = current_user.email
      end
    end
  end

  def create
    if user_signed_in?
      if current_user.admin?
        @class_group = ClassGroup.new()
      elsif current_user.student?
        @students = current_user.email
      end
    end
  end

end
