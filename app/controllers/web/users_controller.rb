# frozen_string_literal: true

module Web
  class UsersController < Web::ApplicationController
    def show
      @user = User.find(params[:id])
      @total_views = @user.articles.sum(:views)
      @total_atricles = @user.articles.count
    end
  end
end
