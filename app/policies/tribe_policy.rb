class TribePolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def index?
  true
  end

  def index_by_user?
  true
  end

  def create?
  true
  end

  def assign_user?
   !record.users.include?(user)
  end

end
