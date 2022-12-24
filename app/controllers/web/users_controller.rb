class Web::UsersController < Web::ApplicationController
  def show
    @user = User.find(params[:id])
    @total_views = @user.articles.sum(:views)

  end
end
