class ClientPolicy < ApplicationPolicy
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

  def permitted_attributes
    [
      :name,
      :phone,
      :email,
      :address,
      :slug,
      :tradename,
      :description,
      :identification,
      :logo,
      :website,
      :active,
      :domain,
      :banner,
      :social [:facebook, :twitter, :instagram],
      :colors [:primary, :secondary, :tertiary]
    ]
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
