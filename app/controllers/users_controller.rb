class UsersController < ApplicationController
  def after_sign_in_path_for(_resource)
    current_user_path
  end

  def after_sign_out_path_for(_resource_or_scope)
    request.root
  end

  def profile
  end
end
