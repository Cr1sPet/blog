# frozen_string_literal: true

class ArticlePolicy < ApplicationPolicy
  def index?
    true
  end

  def show?
    true
  end

  def create?
    true
  end

  def update?
    @user.is_admin? || record.author == user
  end

  def destroy?
    @user.is_admin? || record.author == user
  end
end
