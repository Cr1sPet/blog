class UserPolicy < ApplicationPolicy
  attr_reader :user

  def initialize(user, _record)
    @user = user
  end

  def index?
    @user.is_admin?
  end

  def show?
    @user.is_admin?
  end

  def create?
    @user.is_admin?
  end

  def update?
    @user.is_admin?
  end

  def destroy?
    @user.is_admin?
  end

end
