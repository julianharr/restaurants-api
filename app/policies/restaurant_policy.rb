class RestaurantPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def show?
    true
  end

  def update?
    # Only restaurant owners can update their restaurant
    # Record
    # User
    record.user == user
  end

  def create?
    # Any looged in user can create a restaurant
    !user.nil?
  end

  def destroy?
    update? # Call the update method as it has the same logic as we want for destroy
  end
end
