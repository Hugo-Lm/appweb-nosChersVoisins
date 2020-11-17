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
    user.id != nil
  end

  def create?
    user.id != nil
  end
end
