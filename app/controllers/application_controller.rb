# frozen_string_literal: true

class ApplicationController < ActionController::Base
  include Pundit::Authorization

  rescue_from Pundit::NotAuthorizedError, with: :pundishing_user

  private

  def pundishing_user
    flash[:alert] = 'You are not authorized to perform this action.'
    redirect_to main_app.root_path
  end
end
