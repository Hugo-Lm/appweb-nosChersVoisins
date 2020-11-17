class ProductPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def index?
    return true
  end

  def show?
    return true
  end

  def new?
    record.user == user || user.admin
  end

  def create?
    record.user == user || user.admin
  end
end
