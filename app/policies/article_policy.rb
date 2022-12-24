
class ArticlePolicy < ApplicationPolicy

  def index?
    true
  end

  def show?
    true
  end

  def create?
    @user.is_admin? || @user.author?
  end

  def update?
    @user.is_admin? || (@user.author? && record.author == user)
  end

  def destroy?
    @user.is_admin? || (@user.author? && record.author == user)
  end
end
