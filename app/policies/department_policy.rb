class DepartmentPolicy < ApplicationPolicy
  def index?
    return true if user.super_admin?
    return true if user.client_admin? && owner?

    false
  end

  def show?
    return true if user.super_admin?
    return true if user.client_admin? && owner?

    false
  end

  def create?
    return true if user.super_admin?

    false
  end

  def update?
    return true if user.super_admin?
    return true if user.client_admin? && owner?

    false
  end

  def destroy?
    return true if user.super_admin?
    return true if user.client_admin? && owner?

    false
  end

  def owner?
    record.id == user.client_id
  end

  class Scope < Scope
    def resolve
      return scope.all if user.super_admin?
      return scope.where(id: user.client_id) if user.client_admin?

      scope.none
    end
  end
end
