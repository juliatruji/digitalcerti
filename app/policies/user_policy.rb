class UserPolicy < ApplicationPolicy
  def index?
    return true if user.super_admin?
    return true if user.client_admin? && owner?
    return true if user.location_admin? && user_locations.include?(record.location_id)

    false
  end

  def show?
    return true if user.super_admin?
    return true if user.client_admin? && owner?
    return true if user.location_admin? && user_locations.include?(record.location_id)

    false
  end

  def create?
    return true if user.super_admin?
    return true if user.client_admin? && owner?
    return true if user.location_admin? && user_locations.include?(record.location_id)

    false
  end

  def update?
    return true if user.super_admin?
    return true if user.client_admin? && owner?
    return true if user.location_admin? && user_locations.include?(record.location_id)

    false
  end

  def destroy?
    return true if user.super_admin?
    return true if user.client_admin? && owner?
    return true if user.location_admin? && user_locations.include?(record.location_id)

    false
  end

  def permitted_attributes_for_create
    [
      :name,
      :phone,
      :email,
      :active,
      :user_type,
      :password,
      :active,
      :client_id
    ]
  end

  def permitted_attributes_for_update
    [
      :name,
      :phone,
      :email,
      :active,
      :user_type,
      :password,
      :active,
      :client_id
    ]
  end

  def owner?
    record.client_id == user.client_id
  end

  class Scope < Scope
    def resolve
      return scope.all if user.super_admin?
      return scope.where(client_id: user.client_id) if user.client_admin?
      return scope.joins(:user_locations).where(user_locations: { location_id: user.location_ids }) if user.location_admin?

      scope.none
    end
  end
end
